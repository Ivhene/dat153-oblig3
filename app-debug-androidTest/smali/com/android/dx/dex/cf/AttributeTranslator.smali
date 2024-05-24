.class Lcom/android/dx/dex/cf/AttributeTranslator;
.super Ljava/lang/Object;
.source "AttributeTranslator.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static getAnnotations(Lcom/android/dx/cf/iface/AttributeList;)Lcom/android/dx/rop/annotation/Annotations;
    .locals 3
    .param p0, "attribs"    # Lcom/android/dx/cf/iface/AttributeList;

    .line 90
    invoke-static {p0}, Lcom/android/dx/dex/cf/AttributeTranslator;->getAnnotations0(Lcom/android/dx/cf/iface/AttributeList;)Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v0

    .line 91
    .local v0, "result":Lcom/android/dx/rop/annotation/Annotations;
    invoke-static {p0}, Lcom/android/dx/dex/cf/AttributeTranslator;->getSignature(Lcom/android/dx/cf/iface/AttributeList;)Lcom/android/dx/rop/annotation/Annotation;

    move-result-object v1

    .line 92
    .local v1, "signature":Lcom/android/dx/rop/annotation/Annotation;
    invoke-static {p0}, Lcom/android/dx/dex/cf/AttributeTranslator;->getSourceDebugExtension(Lcom/android/dx/cf/iface/AttributeList;)Lcom/android/dx/rop/annotation/Annotation;

    move-result-object v2

    .line 94
    .local v2, "sourceDebugExtension":Lcom/android/dx/rop/annotation/Annotation;
    if-eqz v1, :cond_0

    .line 95
    invoke-static {v0, v1}, Lcom/android/dx/rop/annotation/Annotations;->combine(Lcom/android/dx/rop/annotation/Annotations;Lcom/android/dx/rop/annotation/Annotation;)Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v0

    .line 98
    :cond_0
    if-eqz v2, :cond_1

    .line 99
    invoke-static {v0, v2}, Lcom/android/dx/rop/annotation/Annotations;->combine(Lcom/android/dx/rop/annotation/Annotations;Lcom/android/dx/rop/annotation/Annotation;)Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v0

    .line 102
    :cond_1
    return-object v0
.end method

.method private static getAnnotations0(Lcom/android/dx/cf/iface/AttributeList;)Lcom/android/dx/rop/annotation/Annotations;
    .locals 4
    .param p0, "attribs"    # Lcom/android/dx/cf/iface/AttributeList;

    .line 180
    nop

    .line 182
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-interface {p0, v0}, Lcom/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;

    .line 183
    .local v0, "visible":Lcom/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;
    nop

    .line 185
    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-interface {p0, v1}, Lcom/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v1

    check-cast v1, Lcom/android/dx/cf/attrib/AttRuntimeInvisibleAnnotations;

    .line 187
    .local v1, "invisible":Lcom/android/dx/cf/attrib/AttRuntimeInvisibleAnnotations;
    if-nez v0, :cond_1

    .line 188
    if-nez v1, :cond_0

    .line 189
    sget-object v2, Lcom/android/dx/rop/annotation/Annotations;->EMPTY:Lcom/android/dx/rop/annotation/Annotations;

    return-object v2

    .line 191
    :cond_0
    invoke-virtual {v1}, Lcom/android/dx/cf/attrib/AttRuntimeInvisibleAnnotations;->getAnnotations()Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v2

    return-object v2

    .line 194
    :cond_1
    if-nez v1, :cond_2

    .line 195
    invoke-virtual {v0}, Lcom/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;->getAnnotations()Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v2

    return-object v2

    .line 200
    :cond_2
    invoke-virtual {v0}, Lcom/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;->getAnnotations()Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v2

    .line 201
    invoke-virtual {v1}, Lcom/android/dx/cf/attrib/AttRuntimeInvisibleAnnotations;->getAnnotations()Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v3

    .line 200
    invoke-static {v2, v3}, Lcom/android/dx/rop/annotation/Annotations;->combine(Lcom/android/dx/rop/annotation/Annotations;Lcom/android/dx/rop/annotation/Annotations;)Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v2

    return-object v2
.end method

.method public static getClassAnnotations(Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/dex/cf/CfOptions;)Lcom/android/dx/rop/annotation/Annotations;
    .locals 8
    .param p0, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p1, "args"    # Lcom/android/dx/dex/cf/CfOptions;

    .line 120
    invoke-virtual {p0}, Lcom/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    .line 121
    .local v0, "thisClass":Lcom/android/dx/rop/cst/CstType;
    invoke-virtual {p0}, Lcom/android/dx/cf/direct/DirectClassFile;->getAttributes()Lcom/android/dx/cf/iface/AttributeList;

    move-result-object v1

    .line 122
    .local v1, "attribs":Lcom/android/dx/cf/iface/AttributeList;
    invoke-static {v1}, Lcom/android/dx/dex/cf/AttributeTranslator;->getAnnotations(Lcom/android/dx/cf/iface/AttributeList;)Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v2

    .line 123
    .local v2, "result":Lcom/android/dx/rop/annotation/Annotations;
    invoke-static {v1}, Lcom/android/dx/dex/cf/AttributeTranslator;->translateEnclosingMethod(Lcom/android/dx/cf/iface/AttributeList;)Lcom/android/dx/rop/annotation/Annotation;

    move-result-object v3

    .line 126
    .local v3, "enclosingMethod":Lcom/android/dx/rop/annotation/Annotation;
    if-nez v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 127
    :goto_0
    :try_start_0
    invoke-static {v0, v1, v4}, Lcom/android/dx/dex/cf/AttributeTranslator;->translateInnerClasses(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/cf/iface/AttributeList;Z)Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v4

    .line 129
    .local v4, "innerClassAnnotations":Lcom/android/dx/rop/annotation/Annotations;
    if-eqz v4, :cond_1

    .line 130
    invoke-static {v2, v4}, Lcom/android/dx/rop/annotation/Annotations;->combine(Lcom/android/dx/rop/annotation/Annotations;Lcom/android/dx/rop/annotation/Annotations;)Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v5
    :try_end_0
    .catch Lcom/android/dx/util/Warning; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 134
    .end local v4    # "innerClassAnnotations":Lcom/android/dx/rop/annotation/Annotations;
    :cond_1
    goto :goto_1

    .line 132
    :catch_0
    move-exception v4

    .line 133
    .local v4, "warn":Lcom/android/dx/util/Warning;
    iget-object v5, p1, Lcom/android/dx/dex/cf/CfOptions;->warn:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "warning: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/dx/util/Warning;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    .end local v4    # "warn":Lcom/android/dx/util/Warning;
    :goto_1
    if-eqz v3, :cond_2

    .line 137
    invoke-static {v2, v3}, Lcom/android/dx/rop/annotation/Annotations;->combine(Lcom/android/dx/rop/annotation/Annotations;Lcom/android/dx/rop/annotation/Annotation;)Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v2

    .line 140
    :cond_2
    invoke-virtual {p0}, Lcom/android/dx/cf/direct/DirectClassFile;->getAccessFlags()I

    move-result v4

    invoke-static {v4}, Lcom/android/dx/rop/code/AccessFlags;->isAnnotation(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    nop

    .line 142
    invoke-static {p0}, Lcom/android/dx/dex/cf/AttributeTranslator;->translateAnnotationDefaults(Lcom/android/dx/cf/direct/DirectClassFile;)Lcom/android/dx/rop/annotation/Annotation;

    move-result-object v4

    .line 143
    .local v4, "annotationDefault":Lcom/android/dx/rop/annotation/Annotation;
    if-eqz v4, :cond_3

    .line 144
    invoke-static {v2, v4}, Lcom/android/dx/rop/annotation/Annotations;->combine(Lcom/android/dx/rop/annotation/Annotations;Lcom/android/dx/rop/annotation/Annotation;)Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v2

    .line 148
    .end local v4    # "annotationDefault":Lcom/android/dx/rop/annotation/Annotation;
    :cond_3
    return-object v2
.end method

.method public static getExceptions(Lcom/android/dx/cf/iface/Method;)Lcom/android/dx/rop/type/TypeList;
    .locals 3
    .param p0, "method"    # Lcom/android/dx/cf/iface/Method;

    .line 69
    invoke-interface {p0}, Lcom/android/dx/cf/iface/Method;->getAttributes()Lcom/android/dx/cf/iface/AttributeList;

    move-result-object v0

    .line 70
    .local v0, "attribs":Lcom/android/dx/cf/iface/AttributeList;
    nop

    .line 71
    const-string v1, "Exceptions"

    invoke-interface {v0, v1}, Lcom/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v1

    check-cast v1, Lcom/android/dx/cf/attrib/AttExceptions;

    .line 73
    .local v1, "exceptions":Lcom/android/dx/cf/attrib/AttExceptions;
    if-nez v1, :cond_0

    .line 74
    sget-object v2, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    return-object v2

    .line 77
    :cond_0
    invoke-virtual {v1}, Lcom/android/dx/cf/attrib/AttExceptions;->getExceptions()Lcom/android/dx/rop/type/TypeList;

    move-result-object v2

    return-object v2
.end method

.method public static getMethodAnnotations(Lcom/android/dx/cf/iface/Method;)Lcom/android/dx/rop/annotation/Annotations;
    .locals 3
    .param p0, "method"    # Lcom/android/dx/cf/iface/Method;

    .line 160
    invoke-interface {p0}, Lcom/android/dx/cf/iface/Method;->getAttributes()Lcom/android/dx/cf/iface/AttributeList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/dex/cf/AttributeTranslator;->getAnnotations(Lcom/android/dx/cf/iface/AttributeList;)Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v0

    .line 161
    .local v0, "result":Lcom/android/dx/rop/annotation/Annotations;
    invoke-static {p0}, Lcom/android/dx/dex/cf/AttributeTranslator;->getExceptions(Lcom/android/dx/cf/iface/Method;)Lcom/android/dx/rop/type/TypeList;

    move-result-object v1

    .line 163
    .local v1, "exceptions":Lcom/android/dx/rop/type/TypeList;
    invoke-interface {v1}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    nop

    .line 165
    invoke-static {v1}, Lcom/android/dx/dex/file/AnnotationUtils;->makeThrows(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/annotation/Annotation;

    move-result-object v2

    .line 166
    .local v2, "throwsAnnotation":Lcom/android/dx/rop/annotation/Annotation;
    invoke-static {v0, v2}, Lcom/android/dx/rop/annotation/Annotations;->combine(Lcom/android/dx/rop/annotation/Annotations;Lcom/android/dx/rop/annotation/Annotation;)Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v0

    .line 169
    .end local v2    # "throwsAnnotation":Lcom/android/dx/rop/annotation/Annotation;
    :cond_0
    return-object v0
.end method

.method public static getParameterAnnotations(Lcom/android/dx/cf/iface/Method;)Lcom/android/dx/rop/annotation/AnnotationsList;
    .locals 5
    .param p0, "method"    # Lcom/android/dx/cf/iface/Method;

    .line 376
    invoke-interface {p0}, Lcom/android/dx/cf/iface/Method;->getAttributes()Lcom/android/dx/cf/iface/AttributeList;

    move-result-object v0

    .line 377
    .local v0, "attribs":Lcom/android/dx/cf/iface/AttributeList;
    nop

    .line 379
    const-string v1, "RuntimeVisibleParameterAnnotations"

    invoke-interface {v0, v1}, Lcom/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v1

    check-cast v1, Lcom/android/dx/cf/attrib/AttRuntimeVisibleParameterAnnotations;

    .line 381
    .local v1, "visible":Lcom/android/dx/cf/attrib/AttRuntimeVisibleParameterAnnotations;
    nop

    .line 383
    const-string v2, "RuntimeInvisibleParameterAnnotations"

    invoke-interface {v0, v2}, Lcom/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v2

    check-cast v2, Lcom/android/dx/cf/attrib/AttRuntimeInvisibleParameterAnnotations;

    .line 386
    .local v2, "invisible":Lcom/android/dx/cf/attrib/AttRuntimeInvisibleParameterAnnotations;
    if-nez v1, :cond_1

    .line 387
    if-nez v2, :cond_0

    .line 388
    sget-object v3, Lcom/android/dx/rop/annotation/AnnotationsList;->EMPTY:Lcom/android/dx/rop/annotation/AnnotationsList;

    return-object v3

    .line 390
    :cond_0
    invoke-virtual {v2}, Lcom/android/dx/cf/attrib/AttRuntimeInvisibleParameterAnnotations;->getParameterAnnotations()Lcom/android/dx/rop/annotation/AnnotationsList;

    move-result-object v3

    return-object v3

    .line 393
    :cond_1
    if-nez v2, :cond_2

    .line 394
    invoke-virtual {v1}, Lcom/android/dx/cf/attrib/AttRuntimeVisibleParameterAnnotations;->getParameterAnnotations()Lcom/android/dx/rop/annotation/AnnotationsList;

    move-result-object v3

    return-object v3

    .line 399
    :cond_2
    invoke-virtual {v1}, Lcom/android/dx/cf/attrib/AttRuntimeVisibleParameterAnnotations;->getParameterAnnotations()Lcom/android/dx/rop/annotation/AnnotationsList;

    move-result-object v3

    .line 400
    invoke-virtual {v2}, Lcom/android/dx/cf/attrib/AttRuntimeInvisibleParameterAnnotations;->getParameterAnnotations()Lcom/android/dx/rop/annotation/AnnotationsList;

    move-result-object v4

    .line 399
    invoke-static {v3, v4}, Lcom/android/dx/rop/annotation/AnnotationsList;->combine(Lcom/android/dx/rop/annotation/AnnotationsList;Lcom/android/dx/rop/annotation/AnnotationsList;)Lcom/android/dx/rop/annotation/AnnotationsList;

    move-result-object v3

    return-object v3
.end method

.method private static getSignature(Lcom/android/dx/cf/iface/AttributeList;)Lcom/android/dx/rop/annotation/Annotation;
    .locals 2
    .param p0, "attribs"    # Lcom/android/dx/cf/iface/AttributeList;

    .line 213
    nop

    .line 214
    const-string v0, "Signature"

    invoke-interface {p0, v0}, Lcom/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/android/dx/cf/attrib/AttSignature;

    .line 216
    .local v0, "signature":Lcom/android/dx/cf/attrib/AttSignature;
    if-nez v0, :cond_0

    .line 217
    const/4 v1, 0x0

    return-object v1

    .line 220
    :cond_0
    invoke-virtual {v0}, Lcom/android/dx/cf/attrib/AttSignature;->getSignature()Lcom/android/dx/rop/cst/CstString;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dx/dex/file/AnnotationUtils;->makeSignature(Lcom/android/dx/rop/cst/CstString;)Lcom/android/dx/rop/annotation/Annotation;

    move-result-object v1

    return-object v1
.end method

.method private static getSourceDebugExtension(Lcom/android/dx/cf/iface/AttributeList;)Lcom/android/dx/rop/annotation/Annotation;
    .locals 2
    .param p0, "attribs"    # Lcom/android/dx/cf/iface/AttributeList;

    .line 225
    nop

    .line 226
    const-string v0, "SourceDebugExtension"

    invoke-interface {p0, v0}, Lcom/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/android/dx/cf/attrib/AttSourceDebugExtension;

    .line 228
    .local v0, "extension":Lcom/android/dx/cf/attrib/AttSourceDebugExtension;
    if-nez v0, :cond_0

    .line 229
    const/4 v1, 0x0

    return-object v1

    .line 232
    :cond_0
    invoke-virtual {v0}, Lcom/android/dx/cf/attrib/AttSourceDebugExtension;->getSmapString()Lcom/android/dx/rop/cst/CstString;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dx/dex/file/AnnotationUtils;->makeSourceDebugExtension(Lcom/android/dx/rop/cst/CstString;)Lcom/android/dx/rop/annotation/Annotation;

    move-result-object v1

    return-object v1
.end method

.method private static translateAnnotationDefaults(Lcom/android/dx/cf/direct/DirectClassFile;)Lcom/android/dx/rop/annotation/Annotation;
    .locals 12
    .param p0, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;

    .line 414
    invoke-virtual {p0}, Lcom/android/dx/cf/direct/DirectClassFile;->getThisClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    .line 415
    .local v0, "thisClass":Lcom/android/dx/rop/cst/CstType;
    invoke-virtual {p0}, Lcom/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/android/dx/cf/iface/MethodList;

    move-result-object v1

    .line 416
    .local v1, "methods":Lcom/android/dx/cf/iface/MethodList;
    invoke-interface {v1}, Lcom/android/dx/cf/iface/MethodList;->size()I

    move-result v2

    .line 417
    .local v2, "sz":I
    new-instance v3, Lcom/android/dx/rop/annotation/Annotation;

    sget-object v4, Lcom/android/dx/rop/annotation/AnnotationVisibility;->EMBEDDED:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    invoke-direct {v3, v0, v4}, Lcom/android/dx/rop/annotation/Annotation;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/annotation/AnnotationVisibility;)V

    .line 419
    .local v3, "result":Lcom/android/dx/rop/annotation/Annotation;
    const/4 v4, 0x0

    .line 421
    .local v4, "any":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 422
    invoke-interface {v1, v5}, Lcom/android/dx/cf/iface/MethodList;->get(I)Lcom/android/dx/cf/iface/Method;

    move-result-object v6

    .line 423
    .local v6, "one":Lcom/android/dx/cf/iface/Method;
    invoke-interface {v6}, Lcom/android/dx/cf/iface/Method;->getAttributes()Lcom/android/dx/cf/iface/AttributeList;

    move-result-object v7

    .line 424
    .local v7, "attribs":Lcom/android/dx/cf/iface/AttributeList;
    nop

    .line 425
    const-string v8, "AnnotationDefault"

    invoke-interface {v7, v8}, Lcom/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v8

    check-cast v8, Lcom/android/dx/cf/attrib/AttAnnotationDefault;

    .line 427
    .local v8, "oneDefault":Lcom/android/dx/cf/attrib/AttAnnotationDefault;
    if-eqz v8, :cond_0

    .line 428
    new-instance v9, Lcom/android/dx/rop/annotation/NameValuePair;

    .line 429
    invoke-interface {v6}, Lcom/android/dx/cf/iface/Method;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/dx/rop/cst/CstNat;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v10

    .line 430
    invoke-virtual {v8}, Lcom/android/dx/cf/attrib/AttAnnotationDefault;->getValue()Lcom/android/dx/rop/cst/Constant;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/Constant;)V

    .line 431
    .local v9, "pair":Lcom/android/dx/rop/annotation/NameValuePair;
    invoke-virtual {v3, v9}, Lcom/android/dx/rop/annotation/Annotation;->add(Lcom/android/dx/rop/annotation/NameValuePair;)V

    .line 432
    const/4 v4, 0x1

    .line 421
    .end local v6    # "one":Lcom/android/dx/cf/iface/Method;
    .end local v7    # "attribs":Lcom/android/dx/cf/iface/AttributeList;
    .end local v8    # "oneDefault":Lcom/android/dx/cf/attrib/AttAnnotationDefault;
    .end local v9    # "pair":Lcom/android/dx/rop/annotation/NameValuePair;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 436
    .end local v5    # "i":I
    :cond_1
    if-nez v4, :cond_2

    .line 437
    const/4 v5, 0x0

    return-object v5

    .line 440
    :cond_2
    invoke-virtual {v3}, Lcom/android/dx/rop/annotation/Annotation;->setImmutable()V

    .line 441
    invoke-static {v3}, Lcom/android/dx/dex/file/AnnotationUtils;->makeAnnotationDefault(Lcom/android/dx/rop/annotation/Annotation;)Lcom/android/dx/rop/annotation/Annotation;

    move-result-object v5

    return-object v5
.end method

.method private static translateEnclosingMethod(Lcom/android/dx/cf/iface/AttributeList;)Lcom/android/dx/rop/annotation/Annotation;
    .locals 4
    .param p0, "attribs"    # Lcom/android/dx/cf/iface/AttributeList;

    .line 248
    nop

    .line 249
    const-string v0, "EnclosingMethod"

    invoke-interface {p0, v0}, Lcom/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/android/dx/cf/attrib/AttEnclosingMethod;

    .line 251
    .local v0, "enclosingMethod":Lcom/android/dx/cf/attrib/AttEnclosingMethod;
    if-nez v0, :cond_0

    .line 252
    const/4 v1, 0x0

    return-object v1

    .line 255
    :cond_0
    invoke-virtual {v0}, Lcom/android/dx/cf/attrib/AttEnclosingMethod;->getEnclosingClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v1

    .line 256
    .local v1, "enclosingClass":Lcom/android/dx/rop/cst/CstType;
    invoke-virtual {v0}, Lcom/android/dx/cf/attrib/AttEnclosingMethod;->getMethod()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v2

    .line 258
    .local v2, "nat":Lcom/android/dx/rop/cst/CstNat;
    if-nez v2, :cond_1

    .line 266
    invoke-static {v1}, Lcom/android/dx/dex/file/AnnotationUtils;->makeEnclosingClass(Lcom/android/dx/rop/cst/CstType;)Lcom/android/dx/rop/annotation/Annotation;

    move-result-object v3

    return-object v3

    .line 269
    :cond_1
    new-instance v3, Lcom/android/dx/rop/cst/CstMethodRef;

    invoke-direct {v3, v1, v2}, Lcom/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    invoke-static {v3}, Lcom/android/dx/dex/file/AnnotationUtils;->makeEnclosingMethod(Lcom/android/dx/rop/cst/CstMethodRef;)Lcom/android/dx/rop/annotation/Annotation;

    move-result-object v3

    return-object v3
.end method

.method private static translateInnerClasses(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/cf/iface/AttributeList;Z)Lcom/android/dx/rop/annotation/Annotations;
    .locals 11
    .param p0, "thisClass"    # Lcom/android/dx/rop/cst/CstType;
    .param p1, "attribs"    # Lcom/android/dx/cf/iface/AttributeList;
    .param p2, "needEnclosingClass"    # Z

    .line 289
    nop

    .line 290
    const-string v0, "InnerClasses"

    invoke-interface {p1, v0}, Lcom/android/dx/cf/iface/AttributeList;->findFirst(Ljava/lang/String;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0

    check-cast v0, Lcom/android/dx/cf/attrib/AttInnerClasses;

    .line 292
    .local v0, "innerClasses":Lcom/android/dx/cf/attrib/AttInnerClasses;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 293
    return-object v1

    .line 301
    :cond_0
    invoke-virtual {v0}, Lcom/android/dx/cf/attrib/AttInnerClasses;->getInnerClasses()Lcom/android/dx/cf/attrib/InnerClassList;

    move-result-object v2

    .line 302
    .local v2, "list":Lcom/android/dx/cf/attrib/InnerClassList;
    invoke-virtual {v2}, Lcom/android/dx/cf/attrib/InnerClassList;->size()I

    move-result v3

    .line 303
    .local v3, "size":I
    const/4 v4, 0x0

    .line 304
    .local v4, "foundThisClass":Lcom/android/dx/cf/attrib/InnerClassList$Item;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v5, "membersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/type/Type;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_3

    .line 307
    invoke-virtual {v2, v6}, Lcom/android/dx/cf/attrib/InnerClassList;->get(I)Lcom/android/dx/cf/attrib/InnerClassList$Item;

    move-result-object v7

    .line 308
    .local v7, "item":Lcom/android/dx/cf/attrib/InnerClassList$Item;
    invoke-virtual {v7}, Lcom/android/dx/cf/attrib/InnerClassList$Item;->getInnerClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v8

    .line 309
    .local v8, "innerClass":Lcom/android/dx/rop/cst/CstType;
    invoke-virtual {v8, p0}, Lcom/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 310
    move-object v4, v7

    goto :goto_1

    .line 311
    :cond_1
    invoke-virtual {v7}, Lcom/android/dx/cf/attrib/InnerClassList$Item;->getOuterClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 312
    invoke-virtual {v8}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .end local v7    # "item":Lcom/android/dx/cf/attrib/InnerClassList$Item;
    .end local v8    # "innerClass":Lcom/android/dx/rop/cst/CstType;
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 316
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 318
    .local v6, "membersSize":I
    if-nez v4, :cond_4

    if-nez v6, :cond_4

    .line 319
    return-object v1

    .line 322
    :cond_4
    new-instance v1, Lcom/android/dx/rop/annotation/Annotations;

    invoke-direct {v1}, Lcom/android/dx/rop/annotation/Annotations;-><init>()V

    .line 324
    .local v1, "result":Lcom/android/dx/rop/annotation/Annotations;
    if-eqz v4, :cond_6

    .line 325
    nop

    .line 326
    invoke-virtual {v4}, Lcom/android/dx/cf/attrib/InnerClassList$Item;->getInnerName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v7

    .line 327
    invoke-virtual {v4}, Lcom/android/dx/cf/attrib/InnerClassList$Item;->getAccessFlags()I

    move-result v8

    .line 325
    invoke-static {v7, v8}, Lcom/android/dx/dex/file/AnnotationUtils;->makeInnerClass(Lcom/android/dx/rop/cst/CstString;I)Lcom/android/dx/rop/annotation/Annotation;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/dx/rop/annotation/Annotations;->add(Lcom/android/dx/rop/annotation/Annotation;)V

    .line 328
    if-eqz p2, :cond_6

    .line 329
    invoke-virtual {v4}, Lcom/android/dx/cf/attrib/InnerClassList$Item;->getOuterClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v7

    .line 330
    .local v7, "outer":Lcom/android/dx/rop/cst/CstType;
    if-eqz v7, :cond_5

    .line 348
    nop

    .line 349
    invoke-virtual {v4}, Lcom/android/dx/cf/attrib/InnerClassList$Item;->getOuterClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v8

    .line 348
    invoke-static {v8}, Lcom/android/dx/dex/file/AnnotationUtils;->makeEnclosingClass(Lcom/android/dx/rop/cst/CstType;)Lcom/android/dx/rop/annotation/Annotation;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/dx/rop/annotation/Annotations;->add(Lcom/android/dx/rop/annotation/Annotation;)V

    goto :goto_2

    .line 331
    :cond_5
    new-instance v8, Lcom/android/dx/util/Warning;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring InnerClasses attribute for an anonymous inner class\n("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 334
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") that doesn\'t come with an\nassociated EnclosingMethod attribute. This class was probably produced by a\ncompiler that did not target the modern .class file format. The recommended\nsolution is to recompile the class from source, using an up-to-date compiler\nand without specifying any \"-target\" type options. The consequence of ignoring\nthis warning is that reflective operations on this class will incorrectly\nindicate that it is *not* an inner class."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/dx/util/Warning;-><init>(Ljava/lang/String;)V

    throw v8

    .line 353
    .end local v7    # "outer":Lcom/android/dx/rop/cst/CstType;
    :cond_6
    :goto_2
    if-eqz v6, :cond_8

    .line 354
    new-instance v7, Lcom/android/dx/rop/type/StdTypeList;

    invoke-direct {v7, v6}, Lcom/android/dx/rop/type/StdTypeList;-><init>(I)V

    .line 355
    .local v7, "typeList":Lcom/android/dx/rop/type/StdTypeList;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v6, :cond_7

    .line 356
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/dx/rop/type/Type;

    invoke-virtual {v7, v8, v9}, Lcom/android/dx/rop/type/StdTypeList;->set(ILcom/android/dx/rop/type/Type;)V

    .line 355
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 358
    .end local v8    # "i":I
    :cond_7
    invoke-virtual {v7}, Lcom/android/dx/rop/type/StdTypeList;->setImmutable()V

    .line 359
    invoke-static {v7}, Lcom/android/dx/dex/file/AnnotationUtils;->makeMemberClasses(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/annotation/Annotation;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/dx/rop/annotation/Annotations;->add(Lcom/android/dx/rop/annotation/Annotation;)V

    .line 362
    .end local v7    # "typeList":Lcom/android/dx/rop/type/StdTypeList;
    :cond_8
    invoke-virtual {v1}, Lcom/android/dx/rop/annotation/Annotations;->setImmutable()V

    .line 363
    return-object v1
.end method
