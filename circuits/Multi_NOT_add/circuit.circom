
pragma circom 2.0.0;

// Template for AND operation
template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a * b;
}

// Template for NOT operation
template NOT() {
    signal input a;
    signal output out;

    out <== 1 - a;
}

// Template for ADD operation
template ADD() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b;
}

// Main circuit using AND, NOT, and ADD templates
template Expression() {
    signal input A;
    signal input B;
    signal output X;
    signal output Y;
    signal output Q;

    // Instantiate the AND component for X = A * B
    component and1 = AND();
    and1.a <== A;
    and1.b <== B;
    X <== and1.out;

    // Instantiate the NOT component for Y = !B
    component not1 = NOT();
    not1.a <== B;
    Y <== not1.out;

    // Instantiate the ADD component for Q = X + Y
    component add1 = ADD();
    add1.a <== X;
    add1.b <== Y;
    Q <== add1.out;
}

// Main component instantiation
component main = Expression();
  

