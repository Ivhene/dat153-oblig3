.class public Lorg/checkerframework/framework/util/ContractsUtils;
.super Ljava/lang/Object;
.source "ContractsUtils.java"


# static fields
.field protected static instance:Lorg/checkerframework/framework/util/ContractsUtils;


# instance fields
.field protected factory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<",
            "****>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<",
            "****>;)V"
        }
    .end annotation

    .line 55
    .local p1, "factory":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<****>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/checkerframework/framework/util/ContractsUtils;->factory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 57
    return-void
.end method

.method private getContract(Lorg/checkerframework/framework/util/Contract$Kind;Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Ljava/util/Set;
    .locals 7
    .param p1, "kind"    # Lorg/checkerframework/framework/util/Contract$Kind;
    .param p2, "contractAnnotation"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/framework/util/Contract;",
            ">(",
            "Lorg/checkerframework/framework/util/Contract$Kind;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 134
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p2, :cond_0

    .line 135
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 137
    :cond_0
    nop

    .line 138
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/util/ContractsUtils;->getQualifierEnforcedByContractAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 139
    .local v0, "enforcedQualifier":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v0, :cond_1

    .line 140
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 142
    :cond_1
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 143
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    const-class v2, Ljava/lang/String;

    .line 144
    const-string v3, "expression"

    const/4 v4, 0x0

    invoke-static {p2, v3, v2, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v2

    .line 146
    .local v2, "expressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v3, Ljava/lang/Boolean;

    .line 147
    const-string v5, "result"

    invoke-static {p2, v5, v3, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueOrNull(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 149
    .local v3, "annoResult":Ljava/lang/Boolean;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 150
    .local v5, "expr":Ljava/lang/String;
    nop

    .line 152
    invoke-static {p1, v5, v0, p2, v3}, Lorg/checkerframework/framework/util/Contract;->create(Lorg/checkerframework/framework/util/Contract$Kind;Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Boolean;)Lorg/checkerframework/framework/util/Contract;

    move-result-object v6

    .line 151
    invoke-virtual {p3, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/util/Contract;

    .line 154
    .local v6, "contract":Lorg/checkerframework/framework/util/Contract;, "TT;"
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v5    # "expr":Ljava/lang/String;
    .end local v6    # "contract":Lorg/checkerframework/framework/util/Contract;, "TT;"
    goto :goto_0

    .line 156
    :cond_2
    return-object v1
.end method

.method private getContracts(Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/util/Contract$Kind;Ljava/lang/Class;)Ljava/util/Set;
    .locals 17
    .param p1, "executableElement"    # Ljavax/lang/model/element/ExecutableElement;
    .param p2, "kind"    # Lorg/checkerframework/framework/util/Contract$Kind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/framework/util/Contract;",
            ">(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Lorg/checkerframework/framework/util/Contract$Kind;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 170
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 172
    .local v4, "result":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    iget-object v5, v0, Lorg/checkerframework/framework/util/ContractsUtils;->factory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    iget-object v6, v2, Lorg/checkerframework/framework/util/Contract$Kind;->frameworkContractClass:Ljava/lang/Class;

    .line 173
    invoke-virtual {v5, v1, v6}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    .line 174
    .local v5, "frameworkContractAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {v0, v2, v5, v3}, Lorg/checkerframework/framework/util/ContractsUtils;->getContract(Lorg/checkerframework/framework/util/Contract$Kind;Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 177
    iget-object v6, v0, Lorg/checkerframework/framework/util/ContractsUtils;->factory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    iget-object v7, v2, Lorg/checkerframework/framework/util/Contract$Kind;->frameworkContractsClass:Ljava/lang/Class;

    .line 178
    invoke-virtual {v6, v1, v7}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    .line 179
    .local v6, "frameworkContractAnnos":Ljavax/lang/model/element/AnnotationMirror;
    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 180
    const-class v8, Ljavax/lang/model/element/AnnotationMirror;

    .line 181
    const-string v9, "value"

    invoke-static {v6, v9, v8, v7}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v8

    .line 183
    .local v8, "frameworkContractAnnoList":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavax/lang/model/element/AnnotationMirror;

    .line 184
    .local v10, "a":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {v0, v2, v10, v3}, Lorg/checkerframework/framework/util/ContractsUtils;->getContract(Lorg/checkerframework/framework/util/Contract$Kind;Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 185
    .end local v10    # "a":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 189
    .end local v8    # "frameworkContractAnnoList":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_0
    iget-object v8, v0, Lorg/checkerframework/framework/util/ContractsUtils;->factory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    iget-object v9, v2, Lorg/checkerframework/framework/util/Contract$Kind;->metaAnnotation:Ljava/lang/Class;

    .line 190
    invoke-virtual {v8, v1, v9}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getDeclAnnotationWithMetaAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    .line 191
    .local v8, "declAnnotations":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/checkerframework/javacutil/Pair;

    .line 192
    .local v10, "r":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v11, v10, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljavax/lang/model/element/AnnotationMirror;

    .line 193
    .local v11, "anno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v12, v10, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljavax/lang/model/element/AnnotationMirror;

    .line 194
    .local v12, "contractAnno":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 195
    invoke-direct {v0, v12, v11}, Lorg/checkerframework/framework/util/ContractsUtils;->getQualifierEnforcedByContractAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v13

    .line 196
    .local v13, "enforcedQualifier":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v13, :cond_1

    .line 197
    goto :goto_1

    .line 199
    :cond_1
    iget-object v14, v2, Lorg/checkerframework/framework/util/Contract$Kind;->expressionElementName:Ljava/lang/String;

    const-class v15, Ljava/lang/String;

    .line 200
    invoke-static {v11, v14, v15, v7}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v14

    .line 202
    .local v14, "expressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v15, Ljava/lang/Boolean;

    .line 203
    const-string v0, "result"

    invoke-static {v11, v0, v15, v7}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueOrNull(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 204
    .local v0, "annoResult":Ljava/lang/Boolean;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Ljava/lang/String;

    .line 205
    .local v7, "expr":Ljava/lang/String;
    nop

    .line 207
    invoke-static {v2, v7, v13, v11, v0}, Lorg/checkerframework/framework/util/Contract;->create(Lorg/checkerframework/framework/util/Contract$Kind;Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Boolean;)Lorg/checkerframework/framework/util/Contract;

    move-result-object v1

    .line 206
    invoke-virtual {v3, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/util/Contract;

    .line 208
    .local v1, "contract":Lorg/checkerframework/framework/util/Contract;, "TT;"
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v1    # "contract":Lorg/checkerframework/framework/util/Contract;, "TT;"
    .end local v7    # "expr":Ljava/lang/String;
    move-object/from16 v1, p1

    const/4 v7, 0x0

    goto :goto_2

    .line 210
    .end local v0    # "annoResult":Ljava/lang/Boolean;
    .end local v10    # "r":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v11    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v12    # "contractAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v13    # "enforcedQualifier":Ljavax/lang/model/element/AnnotationMirror;
    .end local v14    # "expressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_1

    .line 211
    :cond_3
    return-object v4
.end method

.method public static getInstance(Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;)Lorg/checkerframework/framework/util/ContractsUtils;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<",
            "****>;)",
            "Lorg/checkerframework/framework/util/ContractsUtils;"
        }
    .end annotation

    .line 61
    .local p0, "factory":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<****>;"
    sget-object v0, Lorg/checkerframework/framework/util/ContractsUtils;->instance:Lorg/checkerframework/framework/util/ContractsUtils;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/checkerframework/framework/util/ContractsUtils;->factory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    if-eq v0, p0, :cond_1

    .line 62
    :cond_0
    new-instance v0, Lorg/checkerframework/framework/util/ContractsUtils;

    invoke-direct {v0, p0}, Lorg/checkerframework/framework/util/ContractsUtils;-><init>(Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;)V

    sput-object v0, Lorg/checkerframework/framework/util/ContractsUtils;->instance:Lorg/checkerframework/framework/util/ContractsUtils;

    .line 64
    :cond_1
    sget-object v0, Lorg/checkerframework/framework/util/ContractsUtils;->instance:Lorg/checkerframework/framework/util/ContractsUtils;

    return-object v0
.end method

.method private getQualifierEnforcedByContractAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p1, "contractAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/checkerframework/framework/util/ContractsUtils;->getQualifierEnforcedByContractAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Map;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method private getQualifierEnforcedByContractAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "contractAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "argumentAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 237
    nop

    .line 238
    invoke-interface {p2}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/util/ContractsUtils;->makeArgumentRenaming(Ljavax/lang/model/element/Element;)Ljava/util/Map;

    move-result-object v0

    .line 239
    .local v0, "argumentRenaming":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/framework/util/ContractsUtils;->getQualifierEnforcedByContractAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Map;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method private getQualifierEnforcedByContractAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Map;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "contractAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "argumentAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 262
    .local p3, "argumentRenaming":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "qualifier"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueClassName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Z)Ljavax/lang/model/element/Name;

    move-result-object v0

    .line 265
    .local v0, "c":Ljavax/lang/model/element/Name;
    if-eqz p2, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    new-instance v1, Lorg/checkerframework/javacutil/AnnotationBuilder;

    iget-object v2, p0, Lorg/checkerframework/framework/util/ContractsUtils;->factory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;-><init>(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/CharSequence;)V

    .line 270
    .local v1, "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    invoke-virtual {v1, p2, p3}, Lorg/checkerframework/javacutil/AnnotationBuilder;->copyRenameElementValuesFromAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Map;)V

    .line 271
    invoke-virtual {v1}, Lorg/checkerframework/javacutil/AnnotationBuilder;->build()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .local v2, "anno":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_1

    .line 267
    .end local v1    # "builder":Lorg/checkerframework/javacutil/AnnotationBuilder;
    .end local v2    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/framework/util/ContractsUtils;->factory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromName(Ljavax/lang/model/util/Elements;Ljava/lang/CharSequence;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 274
    .restart local v2    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/framework/util/ContractsUtils;->factory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->isSupportedQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    return-object v2

    .line 277
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/framework/util/ContractsUtils;->factory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->canonicalAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 278
    .local v1, "aliasedAnno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v3, p0, Lorg/checkerframework/framework/util/ContractsUtils;->factory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v3, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->isSupportedQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 279
    return-object v1

    .line 281
    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method

.method private makeArgumentRenaming(Ljavax/lang/model/element/Element;)Ljava/util/Map;
    .locals 8
    .param p1, "contractAnnoElement"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 303
    .local v0, "argumentRenaming":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosedElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    .line 304
    .local v2, "meth":Ljavax/lang/model/element/ExecutableElement;
    iget-object v3, p0, Lorg/checkerframework/framework/util/ContractsUtils;->factory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    const-class v4, Lorg/checkerframework/framework/qual/QualifierArgument;

    .line 305
    invoke-virtual {v3, v2, v4}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getDeclAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 306
    .local v3, "argumentAnnotation":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v3, :cond_2

    .line 307
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "sourceName":Ljava/lang/String;
    const-class v5, Ljava/lang/String;

    .line 309
    const-string v6, "value"

    const/4 v7, 0x0

    invoke-static {v3, v6, v5, v7}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 311
    .local v5, "targetName":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 312
    :cond_0
    move-object v5, v4

    .line 314
    :cond_1
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .end local v2    # "meth":Ljavax/lang/model/element/ExecutableElement;
    .end local v3    # "argumentAnnotation":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "sourceName":Ljava/lang/String;
    .end local v5    # "targetName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 317
    :cond_3
    return-object v0
.end method


# virtual methods
.method public getConditionalPostconditions(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Set;
    .locals 2
    .param p1, "methodElement"    # Ljavax/lang/model/element/ExecutableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            ")",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;",
            ">;"
        }
    .end annotation

    .line 115
    sget-object v0, Lorg/checkerframework/framework/util/Contract$Kind;->CONDITIONALPOSTCONDITION:Lorg/checkerframework/framework/util/Contract$Kind;

    const-class v1, Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/framework/util/ContractsUtils;->getContracts(Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/util/Contract$Kind;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getContracts(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Set;
    .locals 2
    .param p1, "executableElement"    # Ljavax/lang/model/element/ExecutableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            ")",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/Contract;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 75
    .local v0, "contracts":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/ContractsUtils;->getPreconditions(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 76
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/ContractsUtils;->getPostconditions(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 77
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/ContractsUtils;->getConditionalPostconditions(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 78
    return-object v0
.end method

.method public getPostconditions(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Set;
    .locals 2
    .param p1, "executableElement"    # Ljavax/lang/model/element/ExecutableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            ")",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/Contract$Postcondition;",
            ">;"
        }
    .end annotation

    .line 102
    sget-object v0, Lorg/checkerframework/framework/util/Contract$Kind;->POSTCONDITION:Lorg/checkerframework/framework/util/Contract$Kind;

    const-class v1, Lorg/checkerframework/framework/util/Contract$Postcondition;

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/framework/util/ContractsUtils;->getContracts(Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/util/Contract$Kind;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPreconditions(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Set;
    .locals 2
    .param p1, "executableElement"    # Ljavax/lang/model/element/ExecutableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            ")",
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/util/Contract$Precondition;",
            ">;"
        }
    .end annotation

    .line 90
    sget-object v0, Lorg/checkerframework/framework/util/Contract$Kind;->PRECONDITION:Lorg/checkerframework/framework/util/Contract$Kind;

    const-class v1, Lorg/checkerframework/framework/util/Contract$Precondition;

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/framework/util/ContractsUtils;->getContracts(Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/util/Contract$Kind;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
