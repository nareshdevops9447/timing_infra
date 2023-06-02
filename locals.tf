locals {
    # timing public this is equal to project name - public
    public_route_table_name = format("%s-%s" , lookup(var.tags, "Names"), "public" )
}