//
// Sampler.ck
// CHmUsiCK
// Created in 2015 by Esteban Betancur
//
// Medellin - Colombia
//

public class Sampler extends Chubgraph
{ 
    SndBuf buffer => Envelope envelope => dac;

    static int CYCLES;
    static int TEMPO;
    
    "" => string fileName;
    
    public string file(string name, string letter)
    {
        if (letter == "")
        {
            "1" => letter;
        }
        
        me.dir(-1) + "dirt/" + name + "/" + letter + ".wav" => fileName; //Mac/Linux conflict with path
        fileName => buffer.read;
        
        return fileName;
    }

    public void soundT(int sample[])
    {
        (60.0/TEMPO) * (CYCLES * 2) => float sec;
		(sec/(sample.cap()*2)) => float beat;
        
        while(true)
        {
            for(0 => int i; i < sample.cap(); i++)
            {
                if (sample[i] == 1)
                {
                    envelope.keyOn();
                    0 => buffer.pos;
                    beat::second => now;
                }
                else if (sample[i] == 0)
                {
                    envelope.keyOff();
                    beat::second => now;
                }
                
            }
        }
    }
    public void soundC(int sample[])
    {
        ((60.0/TEMPO)/4)::second => dur beat;
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
    public void read(string text, int len)
    {
        ((60.0/TEMPO)/4)::second => dur beat;
        
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