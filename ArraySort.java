 class Main {
    public static void main(String[] args) {
        int[] input = { 1, 2, 3, 4, 5 };
        int[] output = new int[input.length];

        // Rearrange the elements
        int index = 0;
        for (int i = 0; i < input.length / 2; i++) {
            output[index++] = input[input.length - 1 - i];
            output[index++] = input[i];
        }

        // If the input length is odd, copy the middle element to the output
        if (input.length % 2 != 0) {
            output[index] = input[input.length / 2];
        }

        // Print the output array
        for (int num : output) {
            System.out.print(num + " ");
        }
    }
}
