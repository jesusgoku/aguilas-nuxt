<template>
  <b-navbar toggleable="lg" type="light" variant="light">
    <b-container>
      <b-navbar-brand to="/">
        <img src="~/assets/images/logo.png" width="150">
      </b-navbar-brand>

      <b-navbar-toggle target="nav_collapse" />

      <b-collapse id="nav_collapse" is-nav>
        <!-- Right aligned nav items -->
        <b-navbar-nav class="ml-auto">
          <b-nav-item to="/">
            Inicio
          </b-nav-item>

          <b-nav-item-dropdown text="Nosotros" right>
            <b-dropdown-item to="/nosotros/universidades">
              Universidades
            </b-dropdown-item>
            <b-dropdown-item to="/nosotros/ciudades">
              Ciudades
            </b-dropdown-item>
            <b-dropdown-item to="/nosotros/naciones">
              Naciones
            </b-dropdown-item>
            <b-dropdown-item to="/nosotros/sociedad">
              Sociedad
            </b-dropdown-item>
          </b-nav-item-dropdown>

          <b-nav-item to="/universidades">
            Universidades
          </b-nav-item>

          <b-nav-item to="/descargas">
            Descargas
          </b-nav-item>
        </b-navbar-nav>
      </b-collapse>
    </b-container>
  </b-navbar>
</template>
