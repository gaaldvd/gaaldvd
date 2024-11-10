"""Python script body template."""

# import statements...


# functions
def print_ascii():
    """Print ASCII characters."""
    print("-----------------\nASCII characters:\n-----------------")
    for n in range(256):
        print(f"{n}:\t{chr(n)}")


# main function
def main():
    """Main function."""
    print_ascii()


# script body
if __name__ == '__main__':
    main()
