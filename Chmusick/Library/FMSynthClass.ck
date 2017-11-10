//
//  FMSynth.ck
//  CHmUsiCK
//
//  Created by Esteban Betancur on 18/10/14.
//  Copyright (c) 2014 Esteban Betancur. All rights reserved.
//


public class FMSynth
{
    SinOsc modulator => ADSR envelope => SinOsc carrier => Envelope env => Gain Normalize => outlet;

    0.08 => Normalize.gain; //don't change this

    SinOsc carrier2;
    8 => float C2f;
    carrier.freq() * C2f => carrier2.freq;
    2 => carrier2.sync;

    SinOsc modulator2;
    0.2 => float M2f;
    carrier.freq() * M2f => modulator2.freq;
    2 => modulator2.gain;

    2 => carrier.sync;
    1 => modulator.gain;

    3 => float NUM;
    2 => float DEN;

    (NUM/DEN) => float mf;
    carrier.freq() * mf => modulator.freq;

    10::ms => dur A;
    8::ms => dur D;
    0.5 => float S;
    5::ms => dur R;

    envelope.set(A, D, S, R);

    8 => int Division;

    [60,0,0,0] @=> int Notes[];

    public int subdivision(int div)
    {
        div => Division;
        return Division;
    }
    public int subdivision()
    {
        return subdivision(Division);
    }
    public int[] setNotes(int notes[])
    {
        notes @=> Notes;
        return Notes;
    }
    public int[] setNotes()
    {
        return Notes;
    }

    public dur attack(dur attacK)
    {
        attacK => A;
        return A;
    }
    public dur attack()
    {
        return attack(A);
    }
    public dur decay(dur decaY)
    {
        decaY => D;
        return D;
    }
    public dur decay()
    {
        return decay(D);
    }
    public float sustain(float sustaiN)
    {
        sustaiN => S;
        return S;
    }
    public float sustain()
    {
        return sustain(S);
    }
    public dur release(dur releasE)
    {
        releasE => R;
        return R;
    }
    public dur release()
    {
        return release(R);
    }
    public int sync(int mode)
    {
        mode => carrier.sync;
        return mode;
    }
    public int sync()
    {
        return carrier.sync();
    }
    public float mfreq(float mf)
    {
        mf => modulator.freq;
        return mf;
    }
    public float mfreq()
    {
        return modulator.freq();
    }
    public float mgain(float mg)
    {
        mg => modulator.gain;
        return modulator.gain();
    }
    public float mgain()
    {
        return modulator.gain();
    }
    public float freq(float cf)
    {
        cf => carrier.freq;
        return carrier.freq();
    }
    public float freq()
    {
        return carrier.freq();
    }
    public float gain(float cg)
    {
        cg => env.gain;
        return env.gain();
    }
    public float gain()
    {
        return carrier.gain();
    }
    public float ratio(float num, float den)
    {
        num => NUM;
        den => DEN;
        (num/den) => mf;
        return mf;
    }
    public float ratio()
    {
        return mf;
    }
    public int c2sync(int mode)
    {
        mode => carrier.sync;
        return mode;
    }
    public int c2sync()
    {
        return carrier.sync();
    }
    public float c2freq(float c2f)
    {
        c2f => C2f;
        return carrier2.freq();
    }
    public float c2freq()
    {
        return carrier2.freq();
    }
    public float c2gain(float c2g)
    {
        c2g => carrier2.gain;
        return carrier2.gain();
    }
    public float c2gain()
    {
        return carrier2.gain();
    }
    public float m2freq(float m2f)
    {
        m2f => M2f;
        return modulator2.freq();
    }
    public float m2freq()
    {
        return modulator2.freq();
    }
    public float m2gain(float m2g)
    {
        m2g => modulator2.gain;
        return modulator2.gain();
    }
    public float m2gain()
    {
        return modulator2.gain();
    }
    public string fm()
    {
        modulator=> carrier => envelope => outlet;
        return "fm";
    }
    public string fmC2()
    {
        modulator => carrier2 => envelope => outlet;
        return "Fm double carrier";
    }
    public string fmM2()
    {
        modulator2 => carrier => envelope => outlet;
        return "FM double modulator";
    }
    public void noteOn(){
        envelope.keyOn();
        env.keyOn();
    }
    public void noteOff(){
        envelope.keyOff();
        env.keyOff();
    }
}
