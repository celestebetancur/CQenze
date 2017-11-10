public class Chmusick extends Chubgraph {

    8 => int Division;
    133 => static float TEMPO;

    4 => static int MEASURE;
    2 => static int CYCLES;

    public static float tempo(float t)
    {
        t => TEMPO;
        return TEMPO;
    }
    public static float tempo()
    {
        return TEMPO;
    }
    private dur convert(float beat)
    // ftod - beat(float) convertion to dur
    {
        Std.fabs(beat) => beat;

        60/beat => float tempo;
        return tempo::second;
    }
    private dur Dur(float beat, int div)
    {
        Std.abs(div) => div;

        (div / 4.0) => float factor;
        (convert(beat) / factor) => dur tempo;
        return tempo;
    }
    public string file(string name, string letter)
    {
        me.dir() + "Samples/" + name + "/" + letter + ".wav" => string fileName; //Mac/Linux conflict with path
        //"Samples/" + name + "/" + letter + ".wav" => fileName; //Mac/Linux conflict with path
        return fileName;
    }
    public string file(string name, int num)
    {
        me.dir() + "Samples/" + name + "/" + num + ".wav" => string fileName; //Mac/Linux conflict with path
        //"Samples/" + name + "/" + num + ".wav" => fileName; //Mac/Linux conflict with path
        return fileName;
    }
    public string file(string name)
    {
        file(name, 1);
        return file(name, 1);
    }
    public int[] rand(int capacity)
    // randomly fills an array with ones
    {
        int random[capacity];

        for(0 => int i; i < random.cap(); i ++)
        {
            Math.random2(0,1) => random[i];
        }
        return random;
    }
    public int[] subArray(int pattern[], int toCut[])
    // cuts an array pattern
    // Thanx to Santiago Beta
    {
        toCut.size() => int newsize;
        int sub[newsize];

        for(0 => int i; i < newsize; i++)
        {
            if(toCut[i] < pattern.size() && toCut[i] >= 0) {
                pattern[toCut[i]] => sub[i];
            }
            else {
                0 => sub[i];
            }
        }
        return sub;
    }
    public int[] trunc(int pattern[], float howmany)
    // truncates an array pattern by howmany
    {
        (pattern.size() * howmany)$int => int newsize;
        int truncated[newsize];

        for(0 => int i; i < newsize; i++)
        {
            pattern[i] => truncated[i];
        }
        return truncated;
    }
    public int[] trunc(int pattern[], int from, int to)
    // cuts an array from - to // idea: Santiago Beta
    {
        if(from >= 0 && to <= pattern.cap() && from < to)
        {
            int truncated[0];

            for(from => int i; i < to; i++)
            {
                truncated << pattern[i];
            }
            return truncated;
        }
        else
        {
            <<< "something is wrong, check trunc() parameters" >>>;
            return pattern;
        }
    }
    public int[] reverse(int pattern[])
    // reverse an array
    {
        int reversed[0];

        for((pattern.cap()-1) => int i; i >= 0 ; i - 1 => i)
        {
            reversed << pattern[i];
        }
        return reversed;
    }
    public int[] densify(int pattern[])
    // ramdomly add ones to an int array
    {
        int notes[0];

        for(0 => int i; i < pattern.cap(); i++)
        {
            if(pattern[i] != 0)
            {
                notes << pattern[i];
            }
        }
        for(0 => int i; i < pattern.cap(); i++)
        {
            if(pattern[i] == 0 && maybe)
            {
                notes[Math.random2(0, (notes.cap() - 1))] => pattern[i];
            }
        }
        return pattern;
    }
    public int[] reverse(SndBuf buffer){
      buffer => outlet;
      buffer.samples() => int total;
      while(true){
        total => buffer.pos;
        total--;
        samp => now;
      }
      return int toReturn[0];;
    }
    public int[] density(int pattern[],int times)
    {
        int toReturn[0];

        for(0 => int i; i < times; i++)
        {
            for(0 => int j; j < pattern.size(); j++)
            {
                toReturn << pattern[j];
            }
        }
        return toReturn;
    }
    public int[] degrade(int pattern[])
    // randomly removes non zero events of an int array
    {
        for(0 => int i; i < pattern.cap(); i++)
        {
            if(pattern[i] != 0 && maybe)
            {
                0 => pattern[i];
            }
        }
        return pattern;
    }
    public int[] every(int parameter)
    // fills an array of parameter size with ones
    {
        int everyArray[parameter];

        if(parameter == 0)
        {
            everyArray << 0;
            return everyArray;
        }
        else
        {
            1 => everyArray[0];

            for(1 => int i; i < everyArray.cap(); i++)
            {
                0 => everyArray[i];
            }
        }
        return everyArray;
    }
    public int[] every(int note, int parameter)
    // fills an array -parameter sized-  with note
    {
        int everyArray[parameter];

        note => everyArray[0];

        for(1 => int i; i < everyArray.cap(); i++)
        {
            0 => everyArray[i];
        }

        return everyArray;
    }
    public int[] randomize(int pattern[])
    //shuffle pattern
    {
        int toReturn[pattern.size()];

        for(pattern.cap()-1 => int i; i > 0; i--)
        {
            Math.random2(0,pattern.size()) % (i+1) => int j;
            pattern[j] => int temp;
            pattern[i] => pattern[j];
            temp => pattern[i];
        }
        return pattern;
    }
    public int[] granularize(int array[], int howmany)
    {
        int granularized[0];

        for(0 => int count; count < array.cap(); count++)
        {
            for(0 => int i; i < howmany; i++)
            {
                granularized << array[count];
            }
        }
        return granularized;
    }
    public int[] transpose(int pattern[], int param)
    // transpose note by param
    {
        int newPattern[pattern.cap()];

        for(0 => int i; i < pattern.cap(); i++)
        {
            pattern[i] + param => newPattern[i];
        }
        return newPattern;
    }
    public int[] rotate(int pattern[])
    // rotates int array pattern by one
    {
        int newPattern[pattern.cap()];

        pattern[pattern.cap()-1] => newPattern[0];

        for(0 => int i; i < (pattern.cap()-1); i++)
        {
            pattern[i] => newPattern[i+1];
        }
        return newPattern;
    }
    public int[] rotate(int pattern[], int move)
    // rotates int array pattern by move positions
    {
        int newPattern[pattern.cap()];

        repeat(move)
        {
            rotate(pattern) @=> newPattern;
            newPattern @=> pattern;
        }
        return pattern;
    }
    public int counter(int pattern[])
    // retunrs the number of non zero positions in int array
    {
        0 => int notesOn;

        for(0 => int i; i < pattern.cap(); i++)
        {
            if(pattern[i] != 0)
            {
                1 +=> notesOn;
            }
        }
        return notesOn;
    }
    public int counter(float pattern[])
    // returns the number of non zero positions in float array
    {
        0 => int notesOn;

        for(0 => int i; i < pattern.cap(); i++)
        {
            if(pattern[i] != 0)
            {
                1 +=> notesOn;
            }
        }
        return notesOn;
    }
    public int[] densify(int pattern[], float parameter)
    //densify or degrade an array with a float parameter as percentage
    {
        int toReturn[pattern.cap()];
        pattern.cap() => float size;

        if(parameter >= 0 && parameter <= 1)
        {
            Std.ftoi(size * parameter) => int toAdd;

            if(counter(pattern) == toAdd) pattern @=> toReturn;

            else
            {
                if(counter(pattern) > toAdd)
                {
                    counter(pattern) - toAdd => int c;

                    while(c > 0)
                    {
                        for(0 => int i; i < pattern.cap(); i++)
                        {
                            if(pattern[i] != 0 && maybe)
                            {
                                0 => pattern[i];
                                1 -=> c;
                            }
                            if(c == 0) break;
                        }
                    }
                    pattern @=> toReturn;
                }
                if(counter(pattern) < toAdd)
                {
                    toAdd - counter(pattern) => int c;

                    while(c > 0)
                    {
                        for(0 => int i; i < pattern.cap(); i++)
                        {
                            if(pattern[i] == 0 && maybe)
                            {
                                1 => pattern[i];
                                1 -=> c;
                            }
                            if(c == 0) break;
                        }
                    }
                    pattern @=> toReturn;
                }
            }
        }
        else
        {
            <<< "Parameter must be a number between 0 and 1">>>;
        }
        return toReturn;
    }
    public int[] palindrome(int pattern[])
    // returns the same patern and the reversed appended
    {
        int toReturn[(pattern.cap()*2)];
        (pattern.cap()*2) -1 => int countDown;

        for(0 => int i; i < pattern.cap(); i++)
        {
            pattern[i] => toReturn[i];
            pattern[i] => toReturn[countDown];
            1 -=> countDown;
        }
        return toReturn;
    }
    public void play(SndBuf buffer)
    {
        buffer => Envelope envelope => outlet;
        while(true)
        {
            envelope.keyOn();
            0 => buffer.pos;
            buffer.samples()::samp => now;
        }
    }
    public void play(SndBuf buffer, float start)
    {
        if(start >= 0 && start <= 1){
            buffer => Envelope envelope => outlet;
            (start*buffer.samples())$int => int Start;
            while(true)
            {
                envelope.keyOn();
                Start => buffer.pos;
                (buffer.samples()-Start)::samp => now;
            }
        } else{
            <<< "Start must be a number between 0 and 1" >>>;
        }
    }
    public void play(SndBuf buffer, float start, float end)
    {
        if(start >= 0 && start <= 1 && end >= 0 && end <= 1){
          if(start < end){
            buffer => Envelope envelope => outlet;
            (start*buffer.samples())$int => int Start;
            (end*buffer.samples())$int => int temp;
            temp-Start => int End;
            while(true)
            {
                envelope.keyOn();
                Start => buffer.pos;
                End::samp => now;
            }
          }
        } else{
            <<< "Start and End must be numbers between 0 and 1" >>>;
        }
    }
    public void play(SndBuf buffer, int sample[], int mode)
    {
        buffer => Envelope envelope => outlet;

        if(mode == 0){

            while(true)
            {
                for(0 => int i; i < sample.cap(); i++)
                {
                    if (sample[i] == 1)
                    {
                        envelope.keyOn();
                        0 => buffer.pos;
                        Dur(TEMPO,Division) => now;
                    }


                    if (sample[i] == 0)
                    {
                        envelope.keyOff();
                        Dur(TEMPO,Division) => now;
                    }
                }
            }
        }
        if(mode == 1){
            while(true)
            {
                for(0 => int i; i < sample.cap(); i++)
                {
                    if (sample[i] != 0)
                    {
                        envelope.keyOn();
                        0 => buffer.pos;
                        Dur(TEMPO/2,Division)/sample.cap() => now;
                    }
                    else
                    {
                        envelope.keyOff();
                        Dur(TEMPO/2,Division)/sample.cap() => now;
                    }

                }
            }
        }
        if(mode == 2){
            while(true)
            {
                for(0 => int i; i < sample.cap(); i++)
                {
                    if (sample[i] != 0)
                    {
                        envelope.keyOn();
                        0 => buffer.pos;
                        Dur(TEMPO,Division)/MEASURE => now;
                    }
                    else
                    {
                        envelope.keyOff();
                        Dur(TEMPO,Division)/MEASURE => now;
                    }

                }
            }
        }
        if(mode == 3){
            while(true)
            {
                for(0 => int i; i < sample.cap(); i++)
                {
                    if (sample[i] != 0)
                    {
                        envelope.keyOn();
                        0 => buffer.pos;
                        Dur(TEMPO,Division)*CYCLES/MEASURE => now;
                    }
                    else
                    {
                        envelope.keyOff();
                        Dur(TEMPO,Division)*CYCLES/MEASURE => now;
                    }

                }
            }
        }
    }

    public void play(SndBuf buffer, int sample[]){
        play(buffer, sample,0);
    }
    public void play(Osc osc, int sample[], int mode)
    {
        osc => ADSR envelope => outlet;
        envelope.set( 10::ms, 10::ms, .5, 20::ms );

        if(mode == 0){
            while(true)
            {
                for(0 => int i; i < sample.cap(); i++)
                {
                    if (sample[i] != 0)
                    {
                        osc.gain(1);
                        envelope.keyOn();
                        Std.mtof(sample[i]) => osc.freq;
                        Dur(TEMPO,Division)/2 => now;
                        envelope.keyOff();
                        Dur(TEMPO,Division)/2 => now;
                    }
                    if (sample[i] == 0)
                    {
                        //envelope.keyOff();
                        osc.gain(0);
                        Dur(TEMPO,Division) => now;
                    }
                }
            }
        }
        if(mode == 1){
            while(true)
            {
                for(0 => int i; i < sample.cap(); i++)
                {
                    if (sample[i] != 0)
                    {
                        envelope.keyOn();
                        Std.mtof(sample[i]) => osc.freq;
                        Dur(TEMPO/2,Division)/sample.cap()/2 => now;
                        envelope.keyOff();
                        Dur(TEMPO/2,Division)/sample.cap()/2 => now;
                    }
                    if (sample[i] == 0)
                    {
                        envelope.keyOff();
                        Dur(TEMPO/2,Division)/sample.cap() => now;
                    }
                }
            }
        }
        if(mode == 2){

            while(true)
            {
                for(0 => int i; i < sample.cap(); i++)
                {
                    if (sample[i] != 0)
                    {
                        envelope.keyOn();
                        Std.mtof(sample[i]) => osc.freq;
                        Dur(TEMPO,Division)/MEASURE => now;
                    }
                    if (sample[i] == 0)
                    {
                        envelope.keyOff();
                        Dur(TEMPO,Division)/MEASURE => now;
                    }
                }
            }
        }
        if(mode == 3){
            while(true)
            {
                for(0 => int i; i < sample.cap(); i++)
                {
                    if (sample[i] != 0)
                    {
                        envelope.keyOn();
                        Std.mtof(sample[i]) => osc.freq;
                        Dur(TEMPO,Division)*CYCLES/MEASURE => now;
                    }
                    else
                    {
                        envelope.keyOff();
                        Dur(TEMPO,Division)*CYCLES/MEASURE => now;
                    }
                }
            }
        }
    }
    public void play(Osc osc, int sample[]){
        play(osc, sample,0);
    }
    public void play(StkInstrument osc, int sample[], int mode)
    {
        osc => Envelope envelope => outlet;

        if(mode == 0){
            while(true)
            {
                for(0 => int i; i < sample.cap(); i++)
                {
                    if (sample[i] != 0)
                    {
                        envelope.keyOn();
                        1.0 => osc.noteOn;
                        Std.mtof(sample[i]) => osc.freq;
                        Dur(TEMPO,Division) => now;
                    }


                    if (sample[i] == 0)
                    {
                        envelope.keyOff();
                        0.0 => osc.noteOff;
                        Dur(TEMPO,Division) => now;
                    }
                }
            }
        }
        if(mode == 1){
            while(true)
            {
                for(0 => int i; i < sample.cap(); i++)
                {
                    if (sample[i] != 0)
                    {
                        envelope.keyOn();
                        1.0 => osc.noteOn;
                        Std.mtof(sample[i]) => osc.freq;
                        Dur(TEMPO/2,Division)/sample.cap() => now;
                    }
                    else
                    {
                        envelope.keyOff();
                        0.0 => osc.noteOff;
                        Dur(TEMPO/2,Division)/sample.cap() => now;
                    }
                }
            }
        }

        if(mode == 2){

            while(true)
            {
                for(0 => int i; i < sample.cap(); i++)
                {
                    if (sample[i] != 0)
                    {
                        envelope.keyOn();
                        1.0 => osc.noteOn;
                        Std.mtof(sample[i]) => osc.freq;
                        Dur(TEMPO,Division)/MEASURE => now;
                    }


                    if (sample[i] == 0)
                    {
                        envelope.keyOff();
                        0.0 => osc.noteOff;
                        Dur(TEMPO,Division)/MEASURE => now;
                    }
                }
            }
        }
        if(mode == 3){
            while(true)
            {
                for(0 => int i; i < sample.cap(); i++)
                {
                    if (sample[i] != 0)
                    {
                        envelope.keyOn();
                        1.0 => osc.noteOn;
                        Std.mtof(sample[i]) => osc.freq;
                        Dur(TEMPO,Division)*CYCLES/MEASURE => now;
                    }
                    else
                    {
                        envelope.keyOff();
                        0.0 => osc.noteOff;
                        Dur(TEMPO,Division)*CYCLES/MEASURE => now;
                    }
                }
            }
        }
    }
    public void play(StkInstrument osc, int sample[]){
        play(osc, sample,0);
    }
    public void play(SndBuf buffer, string sample[], int mode)
    {
        buffer => Envelope envelope => outlet;
        if(mode == 0)
        {
            while(true)
            {
                for(0 => int i; i < sample.cap(); i++)
                {
                    if (sample[i] != "~")
                    {
                        file(sample[i]) => buffer.read;
                        envelope.keyOn();
                        0 => buffer.pos;
                        Dur(TEMPO,Division) => now;
                    }


                    if (sample[i] == "~")
                    {
                        envelope.keyOff();
                        Dur(TEMPO,Division) => now;
                    }
                }
            }
        }
        if(mode == 1)
        {
            while(true)
            {
                for(0 => int i; i < sample.cap(); i++)
                {
                    if (sample[i] != "~")
                    {
                        file(sample[i]) => buffer.read;
                        envelope.keyOn();
                        0 => buffer.pos;
                        Dur(TEMPO,Division)/sample.cap() => now;
                    }
                    if (sample[i] == "~")
                    {
                        envelope.keyOff();
                        Dur(TEMPO,Division)/sample.cap() => now;
                    }
                }
            }
        }
        if(mode == 2)
        {
            while(true)
            {
                for(0 => int i; i < sample.cap(); i++)
                {
                    if (sample[i] != "~")
                    {
                        file(sample[i]) => buffer.read;
                        envelope.keyOn();
                        0 => buffer.pos;
                        Dur(TEMPO,Division)/MEASURE => now;
                    }


                    if (sample[i] == "~")
                    {
                        envelope.keyOff();
                        Dur(TEMPO,Division)/MEASURE => now;
                    }
                }
            }
        }
        if(mode == 3)
        {
            while(true)
            {
                for(0 => int i; i < sample.cap(); i++)
                {
                    if (sample[i] != "~")
                    {
                        file(sample[i]) => buffer.read;
                        envelope.keyOn();
                        0 => buffer.pos;
                        Dur(TEMPO,Division)*CYCLES/MEASURE => now;
                    }
                    else
                    {
                        envelope.keyOff();
                        Dur(TEMPO,Division)*CYCLES/MEASURE => now;
                    }
                }
            }
        }
    }
    public void play(SndBuf buffer, string sample[]){
        play(buffer,sample,0);
    }
}
