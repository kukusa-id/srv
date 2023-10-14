#!make

include .env
export

define docker_compose_cmd
	cd ${W_ROOT_PATH}/docker/$(1); docker compose $(2)
endef

# s-* jalankan docker compose dengan cmd.
# contoh:
# make supabase c=config
# make supabase c='up -d'
supabase:
	$(call docker_compose_cmd,supabase,$(c))
traefik:
	$(call docker_compose_cmd,traefik,$(c))
app-backend:
	$(call docker_compose_cmd,apps/backend,$(c))
