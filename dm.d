import std.stdio;

int sumSquare(int n)
{
    int sum;
    foreach (k; 0..n)
    {
        sum = sum + k * k;
    }
    return sum;
}

void main()
{
    "Hello D!".writeln();
    sumSquare(10).writeln();
    collatz(27).writeln();
}

int collatz(int n)
{
    if (n == 1)
    {
        return 0;
    }
    if (n % 2 == 1)
    {
        return 1 + collatz(3 * n + 1);
    }
    else
    {
        return 1 + collatz(n / 2);
    }
}
