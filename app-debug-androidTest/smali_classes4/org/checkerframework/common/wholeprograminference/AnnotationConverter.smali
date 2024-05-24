.class public Lorg/checkerframework/common/wholeprograminference/AnnotationConverter;
.super Ljava/lang/Object;
.source "AnnotationConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static addFieldToAnnotationBuilder(Ljava/lang/String;Ljava/lang/Object;Lorg/checkerframework/javacutil/AnnotationBuilder;)V
    .locals 3
    .param p0, "fieldKey"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "builder"    # Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 155
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 156
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-virtual {p2, p0, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/util/List;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto/16 :goto_0

    .line 157
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 158
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, p0, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto/16 :goto_0

    .line 159
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 160
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p2, p0, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Integer;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto/16 :goto_0

    .line 161
    :cond_2
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 162
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {p2, p0, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Float;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto/16 :goto_0

    .line 163
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 164
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p2, p0, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Long;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto/16 :goto_0

    .line 165
    :cond_4
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 166
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p2, p0, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Boolean;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto/16 :goto_0

    .line 167
    :cond_5
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_6

    .line 168
    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {p2, p0, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Character;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto/16 :goto_0

    .line 169
    :cond_6
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_7

    .line 170
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p2, p0, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto :goto_0

    .line 171
    :cond_7
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_8

    .line 172
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {p2, p0, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Double;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto :goto_0

    .line 173
    :cond_8
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_9

    .line 174
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {p2, p0, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Enum;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto :goto_0

    .line 175
    :cond_9
    instance-of v0, p1, [Ljava/lang/Enum;

    if-eqz v0, :cond_a

    .line 176
    move-object v0, p1

    check-cast v0, [Ljava/lang/Enum;

    invoke-virtual {p2, p0, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;[Ljava/lang/Enum;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto :goto_0

    .line 177
    :cond_a
    instance-of v0, p1, Ljavax/lang/model/element/AnnotationMirror;

    if-eqz v0, :cond_b

    .line 178
    move-object v0, p1

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, p0, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto :goto_0

    .line 179
    :cond_b
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_c

    .line 180
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto :goto_0

    .line 181
    :cond_c
    instance-of v0, p1, Ljavax/lang/model/type/TypeMirror;

    if-eqz v0, :cond_d

    .line 182
    move-object v0, p1

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p2, p0, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto :goto_0

    .line 183
    :cond_d
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_e

    .line 184
    move-object v0, p1

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {p2, p0, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljava/lang/Short;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto :goto_0

    .line 185
    :cond_e
    instance-of v0, p1, Ljavax/lang/model/element/VariableElement;

    if-eqz v0, :cond_f

    .line 186
    move-object v0, p1

    check-cast v0, Ljavax/lang/model/element/VariableElement;

    invoke-virtual {p2, p0, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;Ljavax/lang/model/element/VariableElement;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    goto :goto_0

    .line 187
    :cond_f
    instance-of v0, p1, [Ljavax/lang/model/element/VariableElement;

    if-eqz v0, :cond_10

    .line 188
    move-object v0, p1

    check-cast v0, [Ljavax/lang/model/element/VariableElement;

    invoke-virtual {p2, p0, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->setValue(Ljava/lang/CharSequence;[Ljavax/lang/model/element/VariableElement;)Lorg/checkerframework/javacutil/AnnotationBuilder;

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_10
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static annotationMirrorToAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Lscenelib/annotations/Annotation;
    .locals 12
    .param p0, "am"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 41
    new-instance v0, Lscenelib/annotations/el/AnnotationDef;

    .line 43
    invoke-static {p0}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    filled-new-array {p0, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 44
    const-string v3, "annotationMirrorToAnnotation %s [%s] keyset=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscenelib/annotations/el/AnnotationDef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .local v0, "def":Lscenelib/annotations/el/AnnotationDef;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v1, "fieldTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lscenelib/annotations/field/AnnotationFieldType;>;"
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/ExecutableElement;

    .line 50
    .local v3, "ee":Ljavax/lang/model/element/ExecutableElement;
    nop

    .line 51
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationValue;

    invoke-interface {v4}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/checkerframework/common/wholeprograminference/AnnotationConverter;->getAnnotationFieldType(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Lscenelib/annotations/field/AnnotationFieldType;

    move-result-object v4

    .line 52
    .local v4, "aft":Lscenelib/annotations/field/AnnotationFieldType;
    if-nez v4, :cond_0

    .line 53
    const/4 v2, 0x0

    return-object v2

    .line 56
    :cond_0
    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .end local v3    # "ee":Ljavax/lang/model/element/ExecutableElement;
    .end local v4    # "aft":Lscenelib/annotations/field/AnnotationFieldType;
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v0, v1}, Lscenelib/annotations/el/AnnotationDef;->setFieldTypes(Ljava/util/Map;)V

    .line 61
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v2

    .line 62
    .local v2, "values":Ljava/util/Map;, "Ljava/util/Map<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v3, "newValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/ExecutableElement;

    .line 64
    .local v5, "ee":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/AnnotationValue;

    invoke-interface {v6}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 65
    .local v6, "value":Ljava/lang/Object;
    instance-of v7, v6, Ljava/util/List;

    if-eqz v7, :cond_3

    .line 67
    move-object v7, v6

    check-cast v7, Ljava/util/List;

    .line 68
    .local v7, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v8, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 72
    .local v10, "o":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Ljavax/lang/model/element/AnnotationValue;

    invoke-interface {v11}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v10    # "o":Ljava/lang/Object;
    goto :goto_2

    .line 74
    :cond_2
    move-object v6, v8

    .line 76
    .end local v7    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v8    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_3
    invoke-interface {v5}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .end local v5    # "ee":Ljavax/lang/model/element/ExecutableElement;
    .end local v6    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 78
    :cond_4
    new-instance v4, Lscenelib/annotations/Annotation;

    invoke-direct {v4, v0, v3}, Lscenelib/annotations/Annotation;-><init>(Lscenelib/annotations/el/AnnotationDef;Ljava/util/Map;)V

    .line 79
    .local v4, "out":Lscenelib/annotations/Annotation;
    return-object v4
.end method

.method protected static annotationToAnnotationMirror(Lscenelib/annotations/Annotation;Ljavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p0, "anno"    # Lscenelib/annotations/Annotation;
    .param p1, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 92
    new-instance v0, Lorg/checkerframework/javacutil/AnnotationBuilder;

    invoke-virtual {p0}, Lscenelib/annotations/Annotation;->def()Lscenelib/annotations/el/AnnotationDef;

    move-result-object v1

    iget-object v1, v1, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/CharSequence;)V

    .line 93
    .local v0, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    iget-object v1, p0, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 94
    .local v2, "fieldKey":Ljava/lang/String;
    iget-object v3, p0, Lscenelib/annotations/Annotation;->fieldValues:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/checkerframework/common/wholeprograminference/AnnotationConverter;->addFieldToAnnotationBuilder(Ljava/lang/String;Ljava/lang/Object;Lorg/checkerframework/javacutil/AnnotationBuilder;)V

    .line 95
    .end local v2    # "fieldKey":Ljava/lang/String;
    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method protected static getAnnotationFieldType(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Lscenelib/annotations/field/AnnotationFieldType;
    .locals 5
    .param p0, "ee"    # Ljavax/lang/model/element/ExecutableElement;
    .param p1, "value"    # Ljava/lang/Object;

    .line 102
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 103
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getDefaultValue()Ljavax/lang/model/element/AnnotationValue;

    move-result-object v0

    .line 104
    .local v0, "defaultValue":Ljavax/lang/model/element/AnnotationValue;
    if-eqz v0, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/sun/tools/javac/code/Attribute$Array;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Attribute$Array;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v2, Lcom/sun/tools/javac/code/Type$ArrayType;

    if-nez v2, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/code/Attribute$Array;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Attribute$Array;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v1, Lcom/sun/tools/javac/code/Type$ArrayType;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type$ArrayType;->elemtype:Lcom/sun/tools/javac/code/Type;

    .line 120
    .local v1, "elemType":Lcom/sun/tools/javac/code/Type;
    :try_start_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "elemTypeName":Ljava/lang/String;
    new-instance v3, Lscenelib/annotations/field/ArrayAFT;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lscenelib/annotations/field/BasicAFT;->forType(Ljava/lang/Class;)Lscenelib/annotations/field/BasicAFT;

    move-result-object v4

    invoke-direct {v3, v4}, Lscenelib/annotations/field/ArrayAFT;-><init>(Lscenelib/annotations/field/ScalarAFT;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 122
    .end local v2    # "elemTypeName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 123
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lorg/checkerframework/javacutil/BugInCF;

    invoke-direct {v3, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 105
    .end local v1    # "elemType":Lcom/sun/tools/javac/code/Type;
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :goto_0
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    .line 106
    .local v2, "listV":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 107
    nop

    .line 110
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationValue;

    invoke-interface {v3}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 109
    invoke-static {p0, v3}, Lorg/checkerframework/common/wholeprograminference/AnnotationConverter;->getAnnotationFieldType(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Lscenelib/annotations/field/AnnotationFieldType;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/field/ScalarAFT;

    .line 111
    .local v3, "scalarAFT":Lscenelib/annotations/field/ScalarAFT;
    if-eqz v3, :cond_2

    .line 112
    new-instance v1, Lscenelib/annotations/field/ArrayAFT;

    invoke-direct {v1, v3}, Lscenelib/annotations/field/ArrayAFT;-><init>(Lscenelib/annotations/field/ScalarAFT;)V

    return-object v1

    .line 115
    .end local v3    # "scalarAFT":Lscenelib/annotations/field/ScalarAFT;
    :cond_2
    return-object v1

    .line 125
    .end local v0    # "defaultValue":Ljavax/lang/model/element/AnnotationValue;
    .end local v2    # "listV":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 126
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lscenelib/annotations/field/BasicAFT;->forType(Ljava/lang/Class;)Lscenelib/annotations/field/BasicAFT;

    move-result-object v0

    return-object v0

    .line 127
    :cond_4
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_5

    .line 128
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lscenelib/annotations/field/BasicAFT;->forType(Ljava/lang/Class;)Lscenelib/annotations/field/BasicAFT;

    move-result-object v0

    return-object v0

    .line 129
    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6

    .line 130
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lscenelib/annotations/field/BasicAFT;->forType(Ljava/lang/Class;)Lscenelib/annotations/field/BasicAFT;

    move-result-object v0

    return-object v0

    .line 131
    :cond_6
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 132
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lscenelib/annotations/field/BasicAFT;->forType(Ljava/lang/Class;)Lscenelib/annotations/field/BasicAFT;

    move-result-object v0

    return-object v0

    .line 133
    :cond_7
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 134
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lscenelib/annotations/field/BasicAFT;->forType(Ljava/lang/Class;)Lscenelib/annotations/field/BasicAFT;

    move-result-object v0

    return-object v0

    .line 135
    :cond_8
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 136
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lscenelib/annotations/field/BasicAFT;->forType(Ljava/lang/Class;)Lscenelib/annotations/field/BasicAFT;

    move-result-object v0

    return-object v0

    .line 137
    :cond_9
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_a

    .line 138
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lscenelib/annotations/field/BasicAFT;->forType(Ljava/lang/Class;)Lscenelib/annotations/field/BasicAFT;

    move-result-object v0

    return-object v0

    .line 139
    :cond_a
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 140
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lscenelib/annotations/field/BasicAFT;->forType(Ljava/lang/Class;)Lscenelib/annotations/field/BasicAFT;

    move-result-object v0

    return-object v0

    .line 142
    :cond_b
    return-object v1
.end method
