
#pragma once
#include "lnast.hpp"
#include "lnast_parser.hpp"

class Lnast_to_cfg_parser {
private:
  uint32_t k_num;
  uint32_t k_next;
  Tree_level curr_statement_level = -1;
  Tree_level prev_statement_level = -1;
  std::vector<Tree_level> level_stack;
  std::vector<uint32_t> k_stack;
  std::vector<std::vector<Lnast_node>> buffer_stack;
  std::vector<Lnast_node> node_buffer;
  std::vector<std::vector<uint32_t>> if_buffer_stack;
  std::vector<uint32_t> if_buffer;
  std::string_view memblock;
  Lnast *lnast;
  Lnast_parser lnast_parser;
  std::string node_str_buffer;

  absl::flat_hash_map<Lnast_ntype_id, std::string> ntype2str;
  void setup_ntype_str_mapping();

  void process_node(const Tree_index &it);
  void process_top(Tree_level level);
  void push_statement(Tree_level level); // prepare for next statement
  void pop_statement(Tree_level level);
  void add_to_buffer(Lnast_node node);
  void process_buffer();

  std::string_view get_node_name(Lnast_node node);
  void flush_it(std::vector<Lnast_node>::iterator it);

  void process_pure_assign();
  void process_as();
  void process_label();
  void process_and();
  void process_xor();
  void process_plus();
  void process_gt();
  void process_if();
  void process_func_call();
  void process_func_def();

public:
  std::string buffer;

  Lnast_to_cfg_parser(std::string_view memblock, Lnast *lnast)
    : memblock(memblock), lnast(lnast) { setup_ntype_str_mapping(); };
  std::string ntype_dbg(Lnast_ntype_id ntype);
  std::string stringify();
};

