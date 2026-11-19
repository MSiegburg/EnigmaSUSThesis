`timescale 1ns / 1ps

module enigma_testbench();

    // Clock generation
    logic clk;
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 10ns period = 100MHz
    end

    // DUT signals
    logic setup;
    logic change_plugs;
    logic prep_message_encode;
    logic parse_letter;
    logic cur_settings;
    
    logic[2:0] rotor_setup[0:2];
    logic[4:0] rotor_positions[0:2];
    logic[4:0] ring_positions[0:2];
    logic[4:0] plug;
    logic[4:0] value;
    logic[4:0] input_letter;
    
    logic[4:0] encode_letter_final;
    logic[2:0] cur_rotors[0:2];

    // Instantiate DUT
    enigma_machine_runtime dut (
        .clk(clk),
        .setup(setup),
        .rotor_setup(rotor_setup),
        .rotor_positions(rotor_positions),
        .ring_positions(ring_positions),
        .change_plugs(change_plugs),
        .plug(plug),
        .value(value),
        .prep_message_encode(prep_message_encode),
        .parse_letter(parse_letter),
        .input_letter(input_letter),
        .encode_letter_final(encode_letter_final),
        .cur_settings(cur_settings),
        .cur_rotors(cur_rotors)
    );

    // Test process
    initial begin
        $display("========================================");
        $display("Enigma Machine Setup & Encryption Test");
        $display("========================================");
        // Initialize all signals
        setup = 0;
        change_plugs = 0;
        prep_message_encode = 0;
        parse_letter = 0;
        cur_settings = 0;

        
        // Set rotor configurations 
        rotor_setup[0] = 0;  // Right rotor uses rotor 1
        rotor_setup[1] = 1;  // Middle rotor uses rotor 2
        rotor_setup[2] = 2;  // Left rotor uses rotor 3
        
        rotor_positions[0] = 0;
        rotor_positions[1] = 0;
        rotor_positions[2] = 0;
        
        ring_positions[0] = 0;
        ring_positions[1] = 0;
        ring_positions[2] = 0;
        
        // Stable state
        repeat(10) @(posedge clk);
        
        // Test setup
        $display("\n--- Setup Test ---");
        setup = 1;
        //@(posedge clk);
        //setup = 0;
        @(posedge clk);
        
        cur_settings = 1;
        @(posedge clk);
        $display("Cur_rotors: [%0d, %0d, %0d]", cur_rotors[0], cur_rotors[1], cur_rotors[2]);
        cur_settings = 0;
        setup =0;
        @(posedge clk);

        
        // Test encryption
        $display("\n--- Encryption Test Symetry ---");
        input_letter = 0;  // 'A'
        
        @(posedge clk);
        prep_message_encode = 1;
        @(posedge clk);
        prep_message_encode = 0;
        @(posedge clk);
        parse_letter = 1;
        
        @(negedge clk);
        $display("Input: '%d')", input_letter);
        $display("Output: '%d')", encode_letter_final);
        
        if (encode_letter_final >= 0 && encode_letter_final <= 25) begin
            $display("[PASS] Valid encryption result");
        end else begin
            $display("[FAIL] Invalid encryption result: %0d", encode_letter_final);
        end
        
        parse_letter = 0;
        @(posedge clk);
        // Set rotor configurations 
        rotor_setup[0] = 0;  // Right rotor uses rotor 1
        rotor_setup[1] = 1;  // Middle rotor uses rotor 2
        rotor_setup[2] = 2;  // Left rotor uses rotor 3
        
        rotor_positions[0] = 0;
        rotor_positions[1] = 0;
        rotor_positions[2] = 0;
        
        ring_positions[0] = 0;
        ring_positions[1] = 0;
        ring_positions[2] = 0;
        
                // Stable state
        @(posedge clk);
        
        // Test setup
        $display("\n--- Setup same settings for decryption---");
        setup = 1;
        @(posedge clk);
        
        cur_settings = 1;
        @(posedge clk);
        
        $display("Cur_rotors: [%0d, %0d, %0d]", cur_rotors[0], cur_rotors[1], cur_rotors[2]);
        cur_settings = 0;
        setup =0;
        @(posedge clk);
        // Test encryption
        $display("\n--- Symetry Test ---");
        input_letter = 5;  // 'F'
        
        @(posedge clk);
        prep_message_encode = 1;
        @(posedge clk);
        prep_message_encode = 0;
        @(posedge clk);
        parse_letter = 1;
        
        @(negedge clk);
        $display("Input: '%d')", input_letter);
        $display("Output: '%d')", encode_letter_final);
        
        if (encode_letter_final >= 0 && encode_letter_final <= 25) begin
            $display("[PASS] Valid encryption result");
        end else begin
            $display("[FAIL] Invalid encryption result: %0d", encode_letter_final);
        end
        
        parse_letter = 0;
        // test some new ring and rotor settings 
        
        // Set rotor configurations 
        rotor_setup[0] = 1;  // Right rotor uses rotor 2
        rotor_setup[1] = 3;  // Middle rotor uses rotor 4
        rotor_setup[2] = 4;  // Left rotor uses rotor 5
        
        rotor_positions[0] = 4;
        rotor_positions[1] = 2;
        rotor_positions[2] = 1;
        
        ring_positions[0] = 0;
        ring_positions[1] = 0;
        ring_positions[2] = 0;
        
        // Stable state
        @(posedge clk);
        
        // Test setup
        $display("\n--- Setup ---");
        setup = 1;
        //@(posedge clk);
        //setup = 0;
        @(posedge clk);
        
        cur_settings = 1;
        @(posedge clk);
        setup =0;
        @(posedge clk);
        cur_settings = 0;
        // Test encryption
        $display("\n--- Encryption Test different rotors and a middle rotor step ---");
        input_letter = 0;  // 'A'
        
        @(posedge clk);
        prep_message_encode = 1;
        @(posedge clk);
        prep_message_encode = 0;
        @(posedge clk);
        parse_letter = 1;
        
        @(negedge clk);
        $display("Input: '%d'", input_letter);
        $display("Output: '%d'", encode_letter_final);
        
        if (encode_letter_final == 4) begin
            $display("[PASS] Valid encryption result");
        end else begin
            $display("[FAIL] Invalid encryption result: %0d expected 4", encode_letter_final);
        end
        
        parse_letter = 0;

        @(posedge clk);
        
        // test some new ring and rotor settings 
        
        // Set rotor configurations 
        rotor_setup[0] = 1;  // Right rotor uses rotor 2
        rotor_setup[1] = 3;  // Middle rotor uses rotor 4
        rotor_setup[2] = 0;  // Left rotor uses rotor 1
        
        rotor_positions[0] = 4;
        rotor_positions[1] = 8;
        rotor_positions[2] = 0;
        
        ring_positions[0] = 0;
        ring_positions[1] = 0;
        ring_positions[2] = 0;
        
        // Stable state
        @(posedge clk);
        
        // Test setup
        $display("\n--- Setup Test ---");
        setup = 1;
        @(posedge clk);
        
        cur_settings = 1;
        @(posedge clk);
        $display("Cur_rotors: [%0d, %0d, %0d]", cur_rotors[0], cur_rotors[1], cur_rotors[2]);
        setup =0;
        @(posedge clk);
        cur_settings = 0;
        // Test encryption
        $display("\n--- Encryption Test different rotors and double stepping ---");
        input_letter = 0;  // 'A'
        
        @(posedge clk);
        prep_message_encode = 1;
        @(posedge clk);
        prep_message_encode = 0;

        parse_letter = 1;
        @(negedge clk);
        $display("Input: '%d' ", input_letter);
        $display("Output: '%d' ", encode_letter_final);


        input_letter = 0; // 'A'
        @(posedge clk);
        parse_letter = 1;
        @(negedge clk);
        $display("Input: '%d' ", input_letter);
        $display("Output: '%d' ", encode_letter_final);

        input_letter = 0; // 'B'
        @(posedge clk);
        parse_letter = 1;
        @(negedge clk);
        $display("Input: '%d' ", input_letter);
        $display("Output: '%d' ", encode_letter_final);


        
        
        // Test Ring Settings
        $display("\n--- Encryption Test with different Ring settings ---");
        
        // Initialize all signals
        setup = 0;
        change_plugs = 0;
        prep_message_encode = 0;
        parse_letter = 0;
        cur_settings = 0;

        
        // Set rotor configurations 
        rotor_setup[0] = 0;  // Right rotor uses rotor 1
        rotor_setup[1] = 1;  // Middle rotor uses rotor 2
        rotor_setup[2] = 2;  // Left rotor uses rotor 3
        
        rotor_positions[0] = 0;
        rotor_positions[1] = 0;
        rotor_positions[2] = 0;
        
        ring_positions[0] = 0;
        ring_positions[1] = 0;
        ring_positions[2] = 1;
        
        // Stable state
        repeat(10) @(posedge clk);
        
        // Test setup
        $display("\n--- Setup Test ---");
        setup = 1;
        //@(posedge clk);
        //setup = 0;
        @(posedge clk);
        
        cur_settings = 1;
        @(posedge clk);
        cur_settings = 0;
        setup =0;
        @(posedge clk);
        input_letter = 0;  // 'A'
        
        @(posedge clk);
        prep_message_encode = 1;
        @(posedge clk);
        prep_message_encode = 0;
        @(posedge clk);
        parse_letter = 1;
        
        @(negedge clk);
        $display("Input: '%d')", input_letter);
        $display("Output: '%d')", encode_letter_final);
        
        if (encode_letter_final >= 0 && encode_letter_final <= 25) begin
            $display("[PASS] Valid encryption result");
        end else begin
            $display("[FAIL] Invalid encryption result: %0d", encode_letter_final);
        end
        
        parse_letter = 0;
        

        @(posedge clk);
        parse_letter = 0;
        
        
        // The big one
        $display("\n--- Encryption: Einmal mit alles ---");
        
        // Initialize all signals
        setup = 0;
        change_plugs = 0;
        prep_message_encode = 0;
        parse_letter = 0;
        cur_settings = 0;

        
        // Set rotor configurations 
        rotor_setup[0] = 1;  // Right rotor uses rotor 2
        rotor_setup[1] = 3;  // Middle rotor uses rotor 4
        rotor_setup[2] = 0;  // Left rotor uses rotor 1
        
        rotor_positions[0] = 2;
        rotor_positions[1] = 8;
        rotor_positions[2] = 0;
        
        ring_positions[0] = 2;
        ring_positions[1] = 0;
        ring_positions[2] = 4;
        
        // Stable state
        repeat(10) @(posedge clk);
        
        // Test setup
        $display("\n--- Setup Test ---");
        setup = 1;
        //@(posedge clk);
        //setup = 0;
        @(posedge clk);
        
        cur_settings = 1;
        @(posedge clk);
        cur_settings = 0;
        setup =0;
        @(posedge clk);
        input_letter = 0;  // 'A'
        
        @(posedge clk);
        prep_message_encode = 1;
        @(posedge clk);
        prep_message_encode = 0;

        parse_letter = 1;
        @(negedge clk);
        $display("Input: '%d' ", input_letter);
        $display("Output: '%d' ", encode_letter_final);


        input_letter = 0; // 'A'
        @(posedge clk);
        parse_letter = 1;
        @(negedge clk);
        $display("Input: '%d' ", input_letter);
        $display("Output: '%d' ", encode_letter_final);

        input_letter = 0; // 'A'
        @(posedge clk);
        parse_letter = 1;
        @(negedge clk);
        $display("Input: '%d' ", input_letter);
        $display("Output: '%d' ", encode_letter_final);
        

        @(posedge clk);
        parse_letter = 0;
        
        $finish;
    end

endmodule