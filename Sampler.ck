public class Sampler extends Chubgraph
{ 
    SndBuf buffer => Envelope envelope => dac;

    //8 => int Division;
    32 => int Division;
    
    "" => string fileName;
    
	
    public string file(string name, string letter)
    {
        if (letter == "")
        {
            "1" => letter;
        }
        
        me.dir() + "dirt/" + name + "/" + letter + ".wav" => fileName; //Mac/Linux conflict with path
        fileName => buffer.read;
        
        return fileName;
    }

    public void soundT(int sample[])
    {
		(2.0/(sample.cap()*4))::second => dur beat;
        while(true)
        {
            for(0 => int i; i < sample.cap(); i++)
            {
                if (sample[i] == 1)
                {
                    envelope.keyOn();
                    0 => buffer.pos;
                }
                beat => now;
                
                if (sample[i] == 0)
                {
                    envelope.keyOff();
                }
                beat => now;
            }
        }
    }
    public void soundC(int sample[])
    {
        while(true)
        {
            for(0 => int i; i < sample.cap(); i++)
            {
                if (sample[i] == 1)
                {
                    envelope.keyOn();
                    0 => buffer.pos;
                }
                0.125::second => now;
                
                if (sample[i] == 0)
                {
                    envelope.keyOff();
                }
                0.125::second => now;
            }
        }
    }
    public void read(string text, int len)
    {
        (2.0/len)::second => dur beat;
        while(true)
        {
            for(0 => int i; i < len; i++)
            {
                if(text.charAt(i) == ' ')
                {
                    envelope.keyOff();
                    beat => now;
                }
                else
                {
                    text.substring(i,1) => string temp;
                    file("alphabet",temp);
                    envelope.keyOn();
                    0 => buffer.pos;
                    beat => now;
                }
            }
        }
    }
}
