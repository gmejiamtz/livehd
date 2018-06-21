//
// Created by sheng hong  on 4/14/18.
//

#ifndef LGRAPH_MY_TEST_H
#define LGRAPH_MY_TEST_H

#include <string>
#include <vector>

#include "inou.hpp"
#include "options.hpp"
#include "py_options.hpp"

class Inou_cfg_options : public Py_options {
public:
  Inou_cfg_options() : Py_options() { }
  void set(const py::dict &dict) final;

  std::string src;
};

class Inou_cfg : public Inou {
private:
  static bool              space(char c) { return isspace(c); }
  static bool              not_space(char c) { return !isspace(c); }
  std::vector<std::string> split(const std::string &str);
  void                     build_graph(std::vector<std::string> &,
                                       std::string &, LGraph *,
                                       std::map<std::string,
                            uint32_t> &,
                                       std::map<std::string, Index_ID> &,
                                       std::map<std::string,
                            std::vector<std::string>> &,
                                       Index_ID &);
  void                     cfg_2_lgraph(char **, std::vector<LGraph *> &);
  std::string              encode_cfg_data(const std::string &);
  void                     update_ifs(std::vector<LGraph *> &lgs, std::vector<std::map<std::string, Index_ID>> &node_mappings);

protected:
  Inou_cfg_options opack;

public:
  Inou_cfg();
  Inou_cfg(const py::dict &);
  virtual ~Inou_cfg();

  std::vector<LGraph *> generate() final;
  std::vector<LGraph *> py_generate() { return generate(); };
  void lgraph_2_cfg(const LGraph *g, const std::string &filename);

  using Inou::generate;

  virtual void generate(std::vector<const LGraph *> &out) final;
  void py_set(const py::dict &dict) { opack.set(dict); }
};

bool prp_get_value(const std::string& str_in, std::string& str_out, bool &v_signed, uint32_t &explicit_bits, uint32_t &val);

#endif //LGRAPH_MY_TEST_H
