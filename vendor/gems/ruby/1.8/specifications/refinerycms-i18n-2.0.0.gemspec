# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{refinerycms-i18n}
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philip Arndt"]
  s.date = %q{2012-02-29}
  s.description = %q{i18n logic extracted from Refinery CMS, for Refinery CMS.}
  s.email = %q{info@refinerycms.com}
  s.files = ["Gemfile", "Rakefile", "app/assets/images/refinery/icons/flags/ad.png", "app/assets/images/refinery/icons/flags/ae.png", "app/assets/images/refinery/icons/flags/af.png", "app/assets/images/refinery/icons/flags/ag.png", "app/assets/images/refinery/icons/flags/ai.png", "app/assets/images/refinery/icons/flags/al.png", "app/assets/images/refinery/icons/flags/am.png", "app/assets/images/refinery/icons/flags/an.png", "app/assets/images/refinery/icons/flags/ao.png", "app/assets/images/refinery/icons/flags/ar.png", "app/assets/images/refinery/icons/flags/as.png", "app/assets/images/refinery/icons/flags/at.png", "app/assets/images/refinery/icons/flags/au.png", "app/assets/images/refinery/icons/flags/aw.png", "app/assets/images/refinery/icons/flags/ax.png", "app/assets/images/refinery/icons/flags/az.png", "app/assets/images/refinery/icons/flags/ba.png", "app/assets/images/refinery/icons/flags/bb.png", "app/assets/images/refinery/icons/flags/bd.png", "app/assets/images/refinery/icons/flags/be.png", "app/assets/images/refinery/icons/flags/bf.png", "app/assets/images/refinery/icons/flags/bg.png", "app/assets/images/refinery/icons/flags/bh.png", "app/assets/images/refinery/icons/flags/bi.png", "app/assets/images/refinery/icons/flags/bj.png", "app/assets/images/refinery/icons/flags/bm.png", "app/assets/images/refinery/icons/flags/bn.png", "app/assets/images/refinery/icons/flags/bo.png", "app/assets/images/refinery/icons/flags/bs.png", "app/assets/images/refinery/icons/flags/bt.png", "app/assets/images/refinery/icons/flags/bv.png", "app/assets/images/refinery/icons/flags/bw.png", "app/assets/images/refinery/icons/flags/by.png", "app/assets/images/refinery/icons/flags/bz.png", "app/assets/images/refinery/icons/flags/ca.png", "app/assets/images/refinery/icons/flags/catalonia.png", "app/assets/images/refinery/icons/flags/cc.png", "app/assets/images/refinery/icons/flags/cd.png", "app/assets/images/refinery/icons/flags/cf.png", "app/assets/images/refinery/icons/flags/cg.png", "app/assets/images/refinery/icons/flags/ch.png", "app/assets/images/refinery/icons/flags/ci.png", "app/assets/images/refinery/icons/flags/ck.png", "app/assets/images/refinery/icons/flags/cl.png", "app/assets/images/refinery/icons/flags/cm.png", "app/assets/images/refinery/icons/flags/cn.png", "app/assets/images/refinery/icons/flags/co.png", "app/assets/images/refinery/icons/flags/cr.png", "app/assets/images/refinery/icons/flags/cs.png", "app/assets/images/refinery/icons/flags/cu.png", "app/assets/images/refinery/icons/flags/cv.png", "app/assets/images/refinery/icons/flags/cx.png", "app/assets/images/refinery/icons/flags/cy.png", "app/assets/images/refinery/icons/flags/da.png", "app/assets/images/refinery/icons/flags/de.png", "app/assets/images/refinery/icons/flags/dj.png", "app/assets/images/refinery/icons/flags/dm.png", "app/assets/images/refinery/icons/flags/do.png", "app/assets/images/refinery/icons/flags/dz.png", "app/assets/images/refinery/icons/flags/ec.png", "app/assets/images/refinery/icons/flags/eg.png", "app/assets/images/refinery/icons/flags/eh.png", "app/assets/images/refinery/icons/flags/el.png", "app/assets/images/refinery/icons/flags/en.png", "app/assets/images/refinery/icons/flags/england.png", "app/assets/images/refinery/icons/flags/er.png", "app/assets/images/refinery/icons/flags/es.png", "app/assets/images/refinery/icons/flags/et.png", "app/assets/images/refinery/icons/flags/europeanunion.png", "app/assets/images/refinery/icons/flags/fam.png", "app/assets/images/refinery/icons/flags/fi.png", "app/assets/images/refinery/icons/flags/fj.png", "app/assets/images/refinery/icons/flags/fk.png", "app/assets/images/refinery/icons/flags/fm.png", "app/assets/images/refinery/icons/flags/fo.png", "app/assets/images/refinery/icons/flags/fr.png", "app/assets/images/refinery/icons/flags/ga.png", "app/assets/images/refinery/icons/flags/gd.png", "app/assets/images/refinery/icons/flags/ge.png", "app/assets/images/refinery/icons/flags/gf.png", "app/assets/images/refinery/icons/flags/gh.png", "app/assets/images/refinery/icons/flags/gi.png", "app/assets/images/refinery/icons/flags/gl.png", "app/assets/images/refinery/icons/flags/gm.png", "app/assets/images/refinery/icons/flags/gn.png", "app/assets/images/refinery/icons/flags/gp.png", "app/assets/images/refinery/icons/flags/gq.png", "app/assets/images/refinery/icons/flags/gr.png", "app/assets/images/refinery/icons/flags/gs.png", "app/assets/images/refinery/icons/flags/gt.png", "app/assets/images/refinery/icons/flags/gu.png", "app/assets/images/refinery/icons/flags/gw.png", "app/assets/images/refinery/icons/flags/gy.png", "app/assets/images/refinery/icons/flags/hk.png", "app/assets/images/refinery/icons/flags/hm.png", "app/assets/images/refinery/icons/flags/hn.png", "app/assets/images/refinery/icons/flags/hr.png", "app/assets/images/refinery/icons/flags/ht.png", "app/assets/images/refinery/icons/flags/hu.png", "app/assets/images/refinery/icons/flags/id.png", "app/assets/images/refinery/icons/flags/ie.png", "app/assets/images/refinery/icons/flags/il.png", "app/assets/images/refinery/icons/flags/in.png", "app/assets/images/refinery/icons/flags/io.png", "app/assets/images/refinery/icons/flags/iq.png", "app/assets/images/refinery/icons/flags/ir.png", "app/assets/images/refinery/icons/flags/is.png", "app/assets/images/refinery/icons/flags/it.png", "app/assets/images/refinery/icons/flags/ja.png", "app/assets/images/refinery/icons/flags/jm.png", "app/assets/images/refinery/icons/flags/jo.png", "app/assets/images/refinery/icons/flags/ke.png", "app/assets/images/refinery/icons/flags/kg.png", "app/assets/images/refinery/icons/flags/kh.png", "app/assets/images/refinery/icons/flags/ki.png", "app/assets/images/refinery/icons/flags/km.png", "app/assets/images/refinery/icons/flags/kn.png", "app/assets/images/refinery/icons/flags/kp.png", "app/assets/images/refinery/icons/flags/kr.png", "app/assets/images/refinery/icons/flags/kw.png", "app/assets/images/refinery/icons/flags/ky.png", "app/assets/images/refinery/icons/flags/kz.png", "app/assets/images/refinery/icons/flags/la.png", "app/assets/images/refinery/icons/flags/lb.png", "app/assets/images/refinery/icons/flags/lc.png", "app/assets/images/refinery/icons/flags/li.png", "app/assets/images/refinery/icons/flags/lk.png", "app/assets/images/refinery/icons/flags/lr.png", "app/assets/images/refinery/icons/flags/ls.png", "app/assets/images/refinery/icons/flags/lt.png", "app/assets/images/refinery/icons/flags/lu.png", "app/assets/images/refinery/icons/flags/lv.png", "app/assets/images/refinery/icons/flags/ly.png", "app/assets/images/refinery/icons/flags/ma.png", "app/assets/images/refinery/icons/flags/mc.png", "app/assets/images/refinery/icons/flags/md.png", "app/assets/images/refinery/icons/flags/me.png", "app/assets/images/refinery/icons/flags/mg.png", "app/assets/images/refinery/icons/flags/mh.png", "app/assets/images/refinery/icons/flags/mk.png", "app/assets/images/refinery/icons/flags/ml.png", "app/assets/images/refinery/icons/flags/mm.png", "app/assets/images/refinery/icons/flags/mn.png", "app/assets/images/refinery/icons/flags/mo.png", "app/assets/images/refinery/icons/flags/mp.png", "app/assets/images/refinery/icons/flags/mq.png", "app/assets/images/refinery/icons/flags/mr.png", "app/assets/images/refinery/icons/flags/ms.png", "app/assets/images/refinery/icons/flags/mt.png", "app/assets/images/refinery/icons/flags/mu.png", "app/assets/images/refinery/icons/flags/mv.png", "app/assets/images/refinery/icons/flags/mw.png", "app/assets/images/refinery/icons/flags/mx.png", "app/assets/images/refinery/icons/flags/my.png", "app/assets/images/refinery/icons/flags/mz.png", "app/assets/images/refinery/icons/flags/na.png", "app/assets/images/refinery/icons/flags/nb.png", "app/assets/images/refinery/icons/flags/nc.png", "app/assets/images/refinery/icons/flags/ne.png", "app/assets/images/refinery/icons/flags/nf.png", "app/assets/images/refinery/icons/flags/ng.png", "app/assets/images/refinery/icons/flags/ni.png", "app/assets/images/refinery/icons/flags/nl.png", "app/assets/images/refinery/icons/flags/nn.png", "app/assets/images/refinery/icons/flags/np.png", "app/assets/images/refinery/icons/flags/nr.png", "app/assets/images/refinery/icons/flags/nu.png", "app/assets/images/refinery/icons/flags/nz.png", "app/assets/images/refinery/icons/flags/om.png", "app/assets/images/refinery/icons/flags/pa.png", "app/assets/images/refinery/icons/flags/pe.png", "app/assets/images/refinery/icons/flags/pf.png", "app/assets/images/refinery/icons/flags/pg.png", "app/assets/images/refinery/icons/flags/ph.png", "app/assets/images/refinery/icons/flags/pk.png", "app/assets/images/refinery/icons/flags/pl.png", "app/assets/images/refinery/icons/flags/pm.png", "app/assets/images/refinery/icons/flags/pn.png", "app/assets/images/refinery/icons/flags/pr.png", "app/assets/images/refinery/icons/flags/ps.png", "app/assets/images/refinery/icons/flags/pt-BR.png", "app/assets/images/refinery/icons/flags/pt.png", "app/assets/images/refinery/icons/flags/pw.png", "app/assets/images/refinery/icons/flags/py.png", "app/assets/images/refinery/icons/flags/qa.png", "app/assets/images/refinery/icons/flags/re.png", "app/assets/images/refinery/icons/flags/ro.png", "app/assets/images/refinery/icons/flags/rs.png", "app/assets/images/refinery/icons/flags/ru.png", "app/assets/images/refinery/icons/flags/rw.png", "app/assets/images/refinery/icons/flags/sa.png", "app/assets/images/refinery/icons/flags/sb.png", "app/assets/images/refinery/icons/flags/sc.png", "app/assets/images/refinery/icons/flags/scotland.png", "app/assets/images/refinery/icons/flags/sd.png", "app/assets/images/refinery/icons/flags/sg.png", "app/assets/images/refinery/icons/flags/sh.png", "app/assets/images/refinery/icons/flags/si.png", "app/assets/images/refinery/icons/flags/sj.png", "app/assets/images/refinery/icons/flags/sk.png", "app/assets/images/refinery/icons/flags/sl.png", "app/assets/images/refinery/icons/flags/sm.png", "app/assets/images/refinery/icons/flags/sn.png", "app/assets/images/refinery/icons/flags/so.png", "app/assets/images/refinery/icons/flags/sr.png", "app/assets/images/refinery/icons/flags/st.png", "app/assets/images/refinery/icons/flags/sv.png", "app/assets/images/refinery/icons/flags/sy.png", "app/assets/images/refinery/icons/flags/sz.png", "app/assets/images/refinery/icons/flags/tc.png", "app/assets/images/refinery/icons/flags/td.png", "app/assets/images/refinery/icons/flags/tf.png", "app/assets/images/refinery/icons/flags/tg.png", "app/assets/images/refinery/icons/flags/th.png", "app/assets/images/refinery/icons/flags/tj.png", "app/assets/images/refinery/icons/flags/tk.png", "app/assets/images/refinery/icons/flags/tl.png", "app/assets/images/refinery/icons/flags/tm.png", "app/assets/images/refinery/icons/flags/tn.png", "app/assets/images/refinery/icons/flags/to.png", "app/assets/images/refinery/icons/flags/tr.png", "app/assets/images/refinery/icons/flags/tt.png", "app/assets/images/refinery/icons/flags/tv.png", "app/assets/images/refinery/icons/flags/tw.png", "app/assets/images/refinery/icons/flags/tz.png", "app/assets/images/refinery/icons/flags/ua.png", "app/assets/images/refinery/icons/flags/ug.png", "app/assets/images/refinery/icons/flags/um.png", "app/assets/images/refinery/icons/flags/us.png", "app/assets/images/refinery/icons/flags/uy.png", "app/assets/images/refinery/icons/flags/uz.png", "app/assets/images/refinery/icons/flags/va.png", "app/assets/images/refinery/icons/flags/vc.png", "app/assets/images/refinery/icons/flags/ve.png", "app/assets/images/refinery/icons/flags/vg.png", "app/assets/images/refinery/icons/flags/vi.png", "app/assets/images/refinery/icons/flags/vn.png", "app/assets/images/refinery/icons/flags/vu.png", "app/assets/images/refinery/icons/flags/wales.png", "app/assets/images/refinery/icons/flags/wf.png", "app/assets/images/refinery/icons/flags/ws.png", "app/assets/images/refinery/icons/flags/ye.png", "app/assets/images/refinery/icons/flags/yt.png", "app/assets/images/refinery/icons/flags/za.png", "app/assets/images/refinery/icons/flags/zh-CN.png", "app/assets/images/refinery/icons/flags/zh-TW.png", "app/assets/images/refinery/icons/flags/zm.png", "app/assets/images/refinery/icons/flags/zw.png", "config/locales/ar.yml", "config/locales/bg.yml", "config/locales/bn-IN.yml", "config/locales/bs.yml", "config/locales/ca.yml", "config/locales/cs.rb", "config/locales/cy.yml", "config/locales/da.yml", "config/locales/de-AT.yml", "config/locales/de-CH.yml", "config/locales/de.yml", "config/locales/dsb.yml", "config/locales/el.yml", "config/locales/en-AU.yml", "config/locales/en-GB.yml", "config/locales/en-US.yml", "config/locales/eo.yml", "config/locales/es-AR.yml", "config/locales/es-CO.yml", "config/locales/es-MX.yml", "config/locales/es-PE.yml", "config/locales/es.yml", "config/locales/et.yml", "config/locales/eu.yml", "config/locales/fa.yml", "config/locales/fi.yml", "config/locales/fr-CA.yml", "config/locales/fr-CH.yml", "config/locales/fr.yml", "config/locales/fun/en-AU.rb", "config/locales/fun/gibberish.rb", "config/locales/fur.yml", "config/locales/gl-ES.yml", "config/locales/gsw-CH.yml", "config/locales/he.yml", "config/locales/hi-IN.yml", "config/locales/hi.yml", "config/locales/hr.yml", "config/locales/hsb.yml", "config/locales/hu.yml", "config/locales/id.yml", "config/locales/is.yml", "config/locales/it.yml", "config/locales/ja.yml", "config/locales/ko.yml", "config/locales/lo.yml", "config/locales/lt.yml", "config/locales/lv.yml", "config/locales/mk.yml", "config/locales/mn.yml", "config/locales/nb.yml", "config/locales/nl.yml", "config/locales/nn.yml", "config/locales/pl.yml", "config/locales/pt-BR.yml", "config/locales/pt-PT.yml", "config/locales/rm.yml", "config/locales/ro.yml", "config/locales/ru.yml", "config/locales/sk.yml", "config/locales/sl.yml", "config/locales/sr-Latn.yml", "config/locales/sr.yml", "config/locales/sv.yml", "config/locales/sw.yml", "config/locales/th.rb", "config/locales/tr.yml", "config/locales/uk.yml", "config/locales/vi.yml", "config/locales/zh-CN.yml", "config/locales/zh-TW.yml", "lib/gemspec.rb", "lib/generators/refinery/i18n_generator.rb", "lib/generators/refinery/templates/config/initializers/refinery/i18n.rb.erb", "lib/refinery/i18n-filter.rb", "lib/refinery/i18n.rb", "lib/refinery/i18n/configuration.rb", "lib/refinery/i18n/engine.rb", "lib/refinery/translate.rb", "lib/refinerycms-i18n.rb", "lib/tasks/translate.rake", "lib/translate/file.rb", "lib/translate/keys.rb", "lib/translate/log.rb", "lib/translate/storage.rb", "spec/requests/dashboard_locale_picker_spec.rb", "spec/spec_helper.rb", "tasks/rspec.rake", "translate-readme.md"]
  s.homepage = %q{http://refinerycms.com}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{i18n logic for Refinery CMS.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<refinerycms-core>, ["~> 2.0.0"])
      s.add_runtime_dependency(%q<routing-filter>, [">= 0.2.3"])
    else
      s.add_dependency(%q<refinerycms-core>, ["~> 2.0.0"])
      s.add_dependency(%q<routing-filter>, [">= 0.2.3"])
    end
  else
    s.add_dependency(%q<refinerycms-core>, ["~> 2.0.0"])
    s.add_dependency(%q<routing-filter>, [">= 0.2.3"])
  end
end