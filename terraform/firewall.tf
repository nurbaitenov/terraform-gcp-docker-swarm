resource "google_compute_firewall" "allow_ssh" {
  name    = "allow-ssh"
  network = google_compute_network.vpc.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow_http_https" {
  name    = "allow-http-https"
  network = google_compute_network.vpc.name

  allow {
    protocol = "tcp"
    ports = [
      "80",
      "443"
    ]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow_swarm" {
  name    = "allow-docker-swarm"
  network = google_compute_network.vpc.name

  allow {
    protocol = "tcp"
    ports = [
      "2377",
      "7946"
    ]
  }

  allow {
    protocol = "udp"
    ports = [
      "7946",
      "4789"
    ]
  }

  source_ranges = ["10.0.1.0/24"]
}