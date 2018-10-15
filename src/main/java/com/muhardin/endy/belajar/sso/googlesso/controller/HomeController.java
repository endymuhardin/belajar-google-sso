package com.muhardin.endy.belajar.sso.googlesso.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomeController {

    @GetMapping("home")
    public void home(){}

    @PreAuthorize("hasAuthority('VIEW_REKENING')")
    @GetMapping("rekening")
    public void daftarRekening(){}

    @PreAuthorize("hasAuthority('VIEW_MUTASI')")
    @GetMapping("mutasi")
    public void mutasiRekening(){}

    @PreAuthorize("hasAuthority('EDIT_TRANSFER')")
    @GetMapping("transfer")
    public void transfer(){}

}
