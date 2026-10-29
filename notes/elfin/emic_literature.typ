#set page(paper: "a4", flipped: true, margin: 1.5cm, numbering: "1")
#set text(size: 9pt)
#set par(justify: true)
#set heading(numbering: "1.")
#show table: set text(size: 8pt)
#show table: set par(justify: false)
#show link: set text(fill: blue)

#let p(key) = cite(key, form: "prose")

#align(center, text(size: 13pt, weight: "bold")[Published ELFIN precipitation studies with EMIC waves])

Search scope (2026-10-19): OpenAlex works citing the ELFIN mission paper (115) and #p(<angelopoulosEnergeticElectronPrecipitation2023>) (64). Also searched: works citing four other ELFIN-EMIC papers, OpenAlex title/abstract/full-text searches for ELFIN with EMIC, the #link("https://elfin.igpp.ucla.edu/publications")[ELFIN team publication list], NSF PAR, and web searches. No ELFIN-EMIC-only preprint was found on arXiv or ESSOAr beyond the arXiv versions of the journal papers below; the arXiv API was rate-limited, so arXiv was covered only through OpenAlex.

The table lists 22 papers that use ELFIN data with EMIC wave observations or an EMIC attribution. Full text was read for 20; #p(<liIncludingAtmosphericBackscatter2025>) and the #p(<angelopoulosEnergeticElectronPrecipitation2023>) statistical set were checked from the abstract or text without an event list.

= Papers

#table(
  columns: (auto, 1.6fr, auto, auto, 1.6fr),
  stroke: 0.4pt + gray,
  table.header[*Paper*][*Event date / UT*][*ELFIN*][*MLT / L*][*Wave observation (instrument, band)*],
  table.cell(rowspan: 5)[#p(<angelopoulosEnergeticElectronPrecipitation2023>)],
  [2021-04-29 04:10:42–04:10:48 (text also says "13:21:05", a typo)], [A], [3.2–3.5 / ≈5], [THEMIS-E FGM ≈35 min earlier, He#super[+] band],
  [2020-11-02 ≈15:19], [A], [12.0 / ≈5.5], [Ground SPA (also PG3, PG4), He#super[+] band],
  [2020-12-06 ≈20:20:40], [A], [≈23 / ≈6–7], [Ground SOD (also KEV, OUL), H#super[+] band],
  [2021-04-17 02:42:50, 04:15:25, 05:48:20 (Fig. 5; caption says ELFIN A, panel says ELFIN-B)], [B], [16.7 / 5.4→5.0], [none (presumed EMIC)],
  [≈50-event statistical set, 2019–2021; no list published], [A, B], [mostly dusk / 5–7], [none],
  [#p(<grachRelativisticElectronPrecipitation2022>)], [2021-03-02 13:21:05], [B], [dusk / ≈6–7], [Ground LOZ (0.2–1 Hz); MMS He#super[+] band ≈1.5 h later],
  [#p(<anNonresonantScatteringRelativistic2022>)], [2021-03-20 06:25:15], [B], [4–5 / 5–8], [MMS1 EMIC 06:10–06:20; THEMIS-D density],
  table.cell(rowspan: 2)[#p(<capannoloElectronPrecipitationObserved2023>)],
  [Example: 2021-02-02 ≈01:59 (South)], [A], [dusk], [MetOp-02 proton precipitation; ground CARISMA ISLL (ATH in SI)],
  [144 events, 2020-08 to 2022-09; list in #p(<capannoloEMICdrivenPrecipitationEvents2023>)], [A, B], [15–24 / 5–8], [POES/MetOp proton precipitation (proxy)],
  [#p(<capannoloUnravelingAtmosphericEnergy2024>)], [Same 144 events], [A, B], [as above], [POES proxy],
  [#p(<hanzelkaSubMeVElectronPrecipitation2024>)], [2021-03-31 07:17:30–07:17:33 (North), from the Capannolo 144 list], [A], [n/r], [none],
  table.cell(rowspan: 3)[#p(<grachElectronPrecipitationDriven2024>)],
  [2020-10-06 ≈23:51], [A (per Capannolo list)], [n/r], [Ground TUL/LOZ],
  [2022-04-23 ≈11:08:40], [n/r], [≈15.6 / n/r], [Ground LOZ (rising tone); GOES-17 and GK-2A EMIC with field depletion],
  [84 dispersed events (SI Figs. S2–S17); SI not obtained, but #p(<ruoxianDispersedPrecipitationEvents2025>) derives from it], [A, B], [n/r], [none],
  table.cell(rowspan: 3)[#p(<zhouCharacteristicsEnergyLatitudeDispersed2025>)],
  [2021-04-19 02:54:30–02:57:30 (Fig. 1)], [B], [≈16 / outer belt], [none for this event; THEMIS wave events are separate (2020-03-30 TH-A, 2021-05-15 TH-E)],
  [2021-04-19 ≈14:45:20 (Fig. 2; date as stated in text)], [A], [20.6 / n/r], [none],
  [80 event folders in #p(<ruoxianDispersedPrecipitationEvents2025>)], [n/r], [n/r], [none],
  table.cell(rowspan: 2)[#p(<bashirObservationsRelativisticElectron2024>)],
  [2021-04-29 ≈04:10:40 (South)], [A], [dawn / ≈5], [THEMIS-E EMIC and whistler, ≈40 min offset],
  [2022-08-21 15:04; 2022-02-22 03:58–04:02; 2021-04-25 03:34–03:38; 2021-12-01 14:44–14:48], [A], [22.3; ≈15; ≈16; 20.6], [none],
  [#p(<roosnovoRelativisticElectronPrecipitation2024>)], [2021-03-06 ≈06:47], [A], [≈18 / ΔL≈1], [GK-2A He#super[+] band bursts on the dusk flank, not conjugate],
  [#p(<qinSubMeVElectronPrecipitation2025>)], [2022-01-11 ≈04:12 (five consecutive A/B orbits)], [A, B], [≈16.4 / ≈10.7], [THEMIS-A/D/E FGM, He#super[+] and H#super[+] band; hiss],
  [#p(<zhangRelativisticElectronFlux2024a>)], [2021-04-17 02:42–05:53 (passes at 02:42–02:46, 04:14–04:18, 05:47–05:51)], [B (one panel A)], [≈16 / 6→5], [none (EMIC inferred); GOES, ERG, VAP, MMS for injections and chorus],
  [#p(<shenEnergeticElectronFlux2023>)], [2021-05-02 03:00–03:40], [A], [≈18.5], [GOES-17 $B_z$ decrease; plasma-sheet flux dropout, not EMIC],
  [#p(<anNonresonantScatteringEnergetic2024>)], [2020-10-06 23:51; 2021-03-02 13:21; 2021-03-06 07:05; 2021-11-19 23:37], [n/r], [12–21], [none (VAP statistics only)],
  [#p(<mourenasImpactEMICWaves2024>)], [2020-11-02 15:19; 2021-03-13 00:40; 2021-04-19 03:55; 2021-09-08 04:18; 2022-02-27 10:50; 2022-04-14 11:30; 2022-05-01 13:08], [n/r], [11.5–18 / 4.1–7.0], [none (GPS flux dropouts)],
  [#p(<artemyevDispersedRelativisticElectron2023>)], [17 dispersed events, incl. \#13: 2021-11-16 04:09–04:12], [n/r (in SI Fig. S8)], [≈22.5 / ≈6], [none for \#13; EMIC is one candidate driver; THEMIS/MMS only for the 2022 events],
  [#p(<artemyevEnergeticParticlePrecipitation2024>)], [2022-08-07 ≈18:50 and ≈21:55], [B], [≈22], [none (EMIC inferred); THEMIS-E, DMSP],
  [#p(<zhangExploringOuterRadiation2025>)], [2021-04-26 10:37–10:42; 2021-12-27 12:19–12:25], [B], [17.4; 19.0], [none (CALET/MAXI precipitation)],
  [#p(<liIncludingAtmosphericBackscatter2025>)], ["ELFIN observations during EMIC events"; list not seen], [n/r], [n/r], [n/r (abstract only)],
  [#p(<shiPropertiesIntenseHBand2024>); #p(<shiInclusionNonresonantEffects2024>)], [Statistical only (VAP H#super[+] band waves vs ELFIN ratio statistics)], [—], [—], [VAP EMFISIS statistics],
)

n/r = not reported in the text read.

*Checked and excluded* (no ELFIN data or no EMIC topic): #p(<blumSpatialTemporalEvolution2024>) (VAP + CALET); #p(<clilverdImprovedEnergyResolution2024>) (DEMETER/POES); #p(<hiraiPropertiesEMICWaves2025>) (ATH + VLF, 2016–2018); #p(<muraseAtmosphericIonizationCaused2025>) (Syowa, 2016–2019); #p(<junStudyHigherfrequencyEMIC2026>) (PWING/Arase/POES, May 2024, after ELFIN reentry); #p(<junSituObservationsInfluence2025>) (VAP/Arase); #p(<shumkoProtonAuroraRelativistic2022>) (SAMPEX + CARISMA, 2007); Zheng 2025 / Xiang 2026 (CIRBE); #p(<zhangIonosphericPlasmaDensity2023>), #p(<shumkoSpatialRelationshipAurora2025>), #p(<luNightSideRelativisticElectron2025>) (isotropy boundary or whistler, not EMIC).

= Published event lists

- #p(<capannoloEMICdrivenPrecipitationEvents2023>): 144 events, proton-precipitation proxy. Zenodo record 7697273, file `EMICdriven_events_list_144events.csv`. Reused by #p(<capannoloUnravelingAtmosphericEnergy2024>) and #p(<hanzelkaSubMeVElectronPrecipitation2024>).
- #p(<ruoxianDispersedPrecipitationEvents2025>): 80 dispersed-event folders `EVENT*/`, derived from the 84-event list in the #p(<grachElectronPrecipitationDriven2024>) SI. Zenodo record 14919208; 7z archive (`bsdtar -xf` extracts it). Event start time is the first row of `SPEC_tList.txt` (columns Y M D h m s); spacecraft is not in the files.

Download: `curl -L -o <file> https://zenodo.org/api/records/<record>/files/<file>/content`.

#bibliography("research.bib", style: "american-geophysical-union")
