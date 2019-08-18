switch(state) {
    case states.jump: {
        if (input_gas && have_gas) {
            balloon_gas -= 1;
        }
    }
}
