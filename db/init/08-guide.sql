INSERT INTO surveys (id, license_id, question, order_num) VALUES
('b1000000-0000-0000-0000-000000000009', 'a1000000-0000-0000-0000-000000000001', '주류를 판매할 예정인가요?', 5),
('b1000000-0000-0000-0000-000000000010', 'a1000000-0000-0000-0000-000000000001', '숯불 또는 화기를 사용할 예정인가요?', 6),
('b1000000-0000-0000-0000-000000000011', 'a1000000-0000-0000-0000-000000000002', '주류를 판매할 예정인가요? ※ 예인 경우 일반음식점 신고 대상입니다.', 5),
('b1000000-0000-0000-0000-000000000012', 'a1000000-0000-0000-0000-000000000002', '숯불 또는 화기를 사용할 예정인가요?', 6),
('b4000000-0000-0000-0000-000000000005', 'a4000000-0000-0000-0000-000000000002', '주택을 임차하여 운영할 예정인가요?', 3),
('b7000000-0000-0000-0000-000000000003', 'a7000000-0000-0000-0000-000000000001', '한약사가 개설하거나 한약 조제를 함께 할 예정인가요?', 3)
ON CONFLICT (id) DO NOTHING;

INSERT INTO survey_documents (id, survey_id, answer, document_id) VALUES
(gen_random_uuid(), 'b1000000-0000-0000-0000-000000000001', true, 'c1000000-0000-0000-0000-000000000004'),
(gen_random_uuid(), 'b1000000-0000-0000-0000-000000000002', true, 'c1000000-0000-0000-0000-000000000005'),
(gen_random_uuid(), 'b1000000-0000-0000-0000-000000000003', true, 'c1000000-0000-0000-0000-000000000006'),
(gen_random_uuid(), 'b1000000-0000-0000-0000-000000000004', true, 'c1000000-0000-0000-0000-000000000007'),
(gen_random_uuid(), 'b1000000-0000-0000-0000-000000000010', true, 'c1000000-0000-0000-0000-000000000005'),

(gen_random_uuid(), 'b1000000-0000-0000-0000-000000000005', true, 'c1000000-0000-0000-0000-000000000011'),
(gen_random_uuid(), 'b1000000-0000-0000-0000-000000000006', true, 'c1000000-0000-0000-0000-000000000012'),
(gen_random_uuid(), 'b1000000-0000-0000-0000-000000000007', true, 'c1000000-0000-0000-0000-000000000013'),
(gen_random_uuid(), 'b1000000-0000-0000-0000-000000000008', true, 'c1000000-0000-0000-0000-000000000014'),
(gen_random_uuid(), 'b1000000-0000-0000-0000-000000000012', true, 'c1000000-0000-0000-0000-000000000012'),
(gen_random_uuid(), 'b2000000-0000-0000-0000-000000000001', true, 'c2000000-0000-0000-0000-000000000003'),
(gen_random_uuid(), 'b2000000-0000-0000-0000-000000000002', true, 'c2000000-0000-0000-0000-000000000004'),

(gen_random_uuid(), 'b3000000-0000-0000-0000-000000000001', true, 'c3000000-0000-0000-0000-000000000005'),
(gen_random_uuid(), 'b3000000-0000-0000-0000-000000000002', true, 'c3000000-0000-0000-0000-000000000006'),
(gen_random_uuid(), 'b4000000-0000-0000-0000-000000000001', true, 'c4000000-0000-0000-0000-000000000005'),
(gen_random_uuid(), 'b4000000-0000-0000-0000-000000000002', true, 'c4000000-0000-0000-0000-000000000006'),

(gen_random_uuid(), 'b4000000-0000-0000-0000-000000000003', true, 'c4000000-0000-0000-0000-000000000008'),
(gen_random_uuid(), 'b4000000-0000-0000-0000-000000000004', true, 'c4000000-0000-0000-0000-000000000009'),

(gen_random_uuid(), 'b5000000-0000-0000-0000-000000000001', true, 'c5000000-0000-0000-0000-000000000003'),
(gen_random_uuid(), 'b5000000-0000-0000-0000-000000000002', true, 'c5000000-0000-0000-0000-000000000004'),

(gen_random_uuid(), 'b6000000-0000-0000-0000-000000000001', true, 'c6000000-0000-0000-0000-000000000005'),
(gen_random_uuid(), 'b6000000-0000-0000-0000-000000000002', true, 'c6000000-0000-0000-0000-000000000004'),

(gen_random_uuid(), 'b7000000-0000-0000-0000-000000000001', true, 'c7000000-0000-0000-0000-000000000004'),
(gen_random_uuid(), 'b7000000-0000-0000-0000-000000000002', true, 'c7000000-0000-0000-0000-000000000005'),

(gen_random_uuid(), 'b8000000-0000-0000-0000-000000000001', true, 'c8000000-0000-0000-0000-000000000005'),
(gen_random_uuid(), 'b8000000-0000-0000-0000-000000000002', true, 'c8000000-0000-0000-0000-000000000006')
;

INSERT INTO checklist_steps (id, license_id, order_num, place, task, estimated_days) VALUES                                                                                      ('e1000000-0000-0000-0000-000000000010', 'a1000000-0000-0000-0000-000000000001', 6, '어린이놀이시설 검사기관', '어린이놀이시설 설치검사합격증 발급', '3~7일') ON CONFLICT (id) DO NOTHING;
UPDATE checklist_steps
SET order_num = 7
WHERE id = 'e1000000-0000-0000-0000-000000000003';
INSERT INTO checklist_steps (id, license_id, order_num, place, task, estimated_days) VALUES                                                                                     ('e1000000-0000-0000-0000-000000000014', 'a1000000-0000-0000-0000-000000000002', 6, '어린이놀이시설 검사기관', '어린이놀이시설 설치검사합격증 발급', '3~7일')
ON CONFLICT (id) DO NOTHING;
UPDATE checklist_steps
SET order_num = 7
WHERE id = 'e1000000-0000-0000-0000-000000000006';
INSERT INTO license_industry_mappings (id, category_id, license_id)
SELECT gen_random_uuid(), c.id, 'a1000000-0000-0000-0000-000000000002'
FROM industry_categories c
         JOIN industry_categories p ON c.parent_id = p.id
WHERE c.level = 3
  AND p.name ILIKE '%비알코올%'
  AND NOT EXISTS (
    SELECT 1
    FROM license_industry_mappings m
    WHERE m.category_id = c.id
);
INSERT INTO license_industry_mappings (id, category_id, license_id)
SELECT gen_random_uuid(), c.id, 'a1000000-0000-0000-0000-000000000001'
FROM industry_categories c
         JOIN industry_categories p ON c.parent_id = p.id
         JOIN industry_categories root ON p.parent_id = root.id
WHERE c.level = 3
  AND root.name = '음식'
  AND p.name NOT ILIKE '%비알코올%'
  AND NOT EXISTS (
    SELECT 1
    FROM license_industry_mappings m
    WHERE m.category_id = c.id
);
INSERT INTO license_industry_mappings (id, category_id, license_id)
SELECT gen_random_uuid(), c.id, 'a3000000-0000-0000-0000-000000000001'
FROM industry_categories c
         JOIN industry_categories p ON c.parent_id = p.id
WHERE c.level = 3
  AND (p.name ILIKE '%미용%' OR c.name ILIKE '%미용%' OR c.name ILIKE '%네일%')
  AND NOT EXISTS (
    SELECT 1 FROM license_industry_mappings m WHERE m.category_id = c.id
);
INSERT INTO license_industry_mappings (id, category_id, license_id)
SELECT gen_random_uuid(), c.id, 'a4000000-0000-0000-0000-000000000001'
FROM industry_categories c
         JOIN industry_categories p ON c.parent_id = p.id
WHERE c.level = 3
  AND (p.name ILIKE '%숙박%' OR c.name ILIKE '%여관%' OR c.name ILIKE '%숙박%')
  AND NOT EXISTS (
    SELECT 1 FROM license_industry_mappings m WHERE m.category_id = c.id
);
INSERT INTO license_industry_mappings (id, category_id, license_id)
SELECT gen_random_uuid(), c.id, 'a4000000-0000-0000-0000-000000000002'
FROM industry_categories c
WHERE c.level = 3
  AND c.name ILIKE '%민박%'
  AND NOT EXISTS (
    SELECT 1 FROM license_industry_mappings m WHERE m.category_id = c.id
);
INSERT INTO license_industry_mappings (id, category_id, license_id)
SELECT gen_random_uuid(), c.id, 'a5000000-0000-0000-0000-000000000001'
FROM industry_categories c
         JOIN industry_categories p ON c.parent_id = p.id
WHERE c.level = 3
  AND (
    p.name ILIKE '%스포츠%'
        OR c.name ILIKE '%체력%'
        OR c.name ILIKE '%헬스%'
        OR c.name ILIKE '%테니스%'
    )
  AND NOT EXISTS (
    SELECT 1 FROM license_industry_mappings m WHERE m.category_id = c.id
);
INSERT INTO license_industry_mappings (id, category_id, license_id)
SELECT gen_random_uuid(), c.id, 'a6000000-0000-0000-0000-000000000001'
FROM industry_categories c
         JOIN industry_categories p ON c.parent_id = p.id
WHERE c.level = 3
  AND (p.name ILIKE '%교육%' OR c.name ILIKE '%학원%' OR c.name ILIKE '%독서실%' OR c.name ILIKE '%스터디%')
  AND NOT EXISTS (
    SELECT 1 FROM license_industry_mappings m WHERE m.category_id = c.id
);
INSERT INTO license_industry_mappings (id, category_id, license_id)
SELECT gen_random_uuid(), c.id, 'a7000000-0000-0000-0000-000000000001'
FROM industry_categories c
WHERE c.level = 3
  AND c.name ILIKE '%약국%'
  AND NOT EXISTS (
    SELECT 1 FROM license_industry_mappings m WHERE m.category_id = c.id
);
INSERT INTO license_industry_mappings (id, category_id, license_id)
SELECT gen_random_uuid(), c.id, 'a8000000-0000-0000-0000-000000000001'
FROM industry_categories c
WHERE c.level = 3
  AND (c.name ILIKE '%공인중개%' OR c.name ILIKE '%부동산%')
  AND NOT EXISTS (
    SELECT 1 FROM license_industry_mappings m WHERE m.category_id = c.id
);
