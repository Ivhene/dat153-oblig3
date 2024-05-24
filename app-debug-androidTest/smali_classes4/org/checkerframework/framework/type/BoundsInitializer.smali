.class public Lorg/checkerframework/framework/type/BoundsInitializer;
.super Ljava/lang/Object;
.source "BoundsInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/type/BoundsInitializer$TypeArgNode;,
        Lorg/checkerframework/framework/type/BoundsInitializer$UnionNode;,
        Lorg/checkerframework/framework/type/BoundsInitializer$IntersectionNode;,
        Lorg/checkerframework/framework/type/BoundsInitializer$ArrayComponentNode;,
        Lorg/checkerframework/framework/type/BoundsInitializer$LowerBoundNode;,
        Lorg/checkerframework/framework/type/BoundsInitializer$UpperBoundNode;,
        Lorg/checkerframework/framework/type/BoundsInitializer$SuperNode;,
        Lorg/checkerframework/framework/type/BoundsInitializer$ExtendsNode;,
        Lorg/checkerframework/framework/type/BoundsInitializer$EnclosingNode;,
        Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;,
        Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;,
        Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;,
        Lorg/checkerframework/framework/type/BoundsInitializer$WildcardStructure;,
        Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;,
        Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abortIfParentNotKind(Ljavax/lang/model/type/TypeKind;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 3
    .param p0, "typeKind"    # Ljavax/lang/model/type/TypeKind;
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "parent"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1333
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1334
    return-void

    .line 1337
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1338
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Unexpected parent kind:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    const-string v1, "parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1341
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    const-string v2, "replacement="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    const-string v2, "expected="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$100(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 48
    invoke-static {p0}, Lorg/checkerframework/framework/type/BoundsInitializer;->createAndSetUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 48
    invoke-static {p0}, Lorg/checkerframework/framework/type/BoundsInitializer;->createAndSetLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljavax/lang/model/type/WildcardType;
    .locals 1
    .param p0, "x0"    # Ljavax/lang/model/type/TypeVariable;
    .param p1, "x1"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 48
    invoke-static {p0, p1}, Lorg/checkerframework/framework/type/BoundsInitializer;->getUpperBoundAsWildcard(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljavax/lang/model/type/WildcardType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;)Z
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

    .line 48
    invoke-static {p0}, Lorg/checkerframework/framework/type/BoundsInitializer;->isImmediateBoundPath(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;)Z

    move-result v0

    return v0
.end method

.method private static createAndSetLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p0, "typeVar"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 818
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->getLowerBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 819
    .local v0, "lb":Ljavax/lang/model/type/TypeMirror;
    if-nez v0, :cond_0

    .line 821
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    check-cast v1, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    .line 822
    invoke-virtual {v1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v1

    .line 823
    .local v1, "context":Lcom/sun/tools/javac/util/Context;
    invoke-static {v1}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v2

    .line 824
    .local v2, "syms":Lcom/sun/tools/javac/code/Symtab;
    iget-object v0, v2, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    .line 826
    .end local v1    # "context":Lcom/sun/tools/javac/util/Context;
    .end local v2    # "syms":Lcom/sun/tools/javac/code/Symtab;
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 827
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 828
    .local v1, "lowerBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->setLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 829
    return-object v1
.end method

.method private static createAndSetUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p0, "typeVar"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 810
    nop

    .line 812
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 811
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 813
    .local v0, "upperBound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->setUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 814
    return-object v0
.end method

.method private static getUpperBoundAsWildcard(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljavax/lang/model/type/WildcardType;
    .locals 4
    .param p0, "typeVariable"    # Ljavax/lang/model/type/TypeVariable;
    .param p1, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 134
    invoke-interface {p0}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 135
    .local v0, "upperBound":Ljavax/lang/model/type/TypeMirror;
    sget-object v1, Lorg/checkerframework/framework/type/BoundsInitializer$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 146
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    .line 148
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Unexpected upper bound kind: %s type: %s"

    invoke-direct {v1, v3, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 144
    :pswitch_0
    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v1, v2, v2}, Ljavax/lang/model/util/Types;->getWildcardType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/WildcardType;

    move-result-object v1

    return-object v1

    .line 139
    :pswitch_1
    iget-object v1, p1, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v1, v0, v2}, Ljavax/lang/model/util/Types;->getWildcardType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/WildcardType;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static initializeBounds(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V
    .locals 1
    .param p0, "typeVar"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 159
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/framework/type/BoundsInitializer;->initializeBounds(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Map;)V

    .line 160
    return-void
.end method

.method private static initializeBounds(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Map;)V
    .locals 5
    .param p0, "typeVar"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)V"
        }
    .end annotation

    .line 171
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-static {p0}, Lorg/checkerframework/framework/type/BoundsInitializer;->saveAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/util/Set;

    move-result-object v0

    .line 173
    .local v0, "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    new-instance v1, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;

    new-instance v2, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;-><init>(Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V

    invoke-direct {v1, v2, p1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;-><init>(Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;Ljava/util/Map;)V

    .line 175
    .local v1, "visitor":Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;
    invoke-virtual {v1, p0}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->initializeLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V

    .line 176
    invoke-virtual {v1, p0}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->resolveTypeVarReferences(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 178
    new-instance v2, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;

    new-instance v4, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;

    invoke-direct {v4, v3, p0}, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;-><init>(Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V

    invoke-direct {v2, v4, p1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;-><init>(Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;Ljava/util/Map;)V

    .line 180
    .local v2, "visitor2":Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;
    invoke-virtual {v2, p0}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->initializeUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V

    .line 181
    invoke-virtual {v2, p0}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->resolveTypeVarReferences(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 183
    invoke-static {p0, v0}, Lorg/checkerframework/framework/type/BoundsInitializer;->restoreAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 184
    return-void
.end method

.method public static initializeExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)V
    .locals 1
    .param p0, "wildcard"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 252
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/framework/type/BoundsInitializer;->initializeExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Map;)V

    .line 253
    return-void
.end method

.method private static initializeExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Map;)V
    .locals 4
    .param p0, "wildcard"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)V"
        }
    .end annotation

    .line 264
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-static {p0}, Lorg/checkerframework/framework/type/BoundsInitializer;->saveAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/util/Set;

    move-result-object v0

    .line 265
    .local v0, "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    new-instance v1, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;

    new-instance v2, Lorg/checkerframework/framework/type/BoundsInitializer$WildcardStructure;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/checkerframework/framework/type/BoundsInitializer$WildcardStructure;-><init>(Lorg/checkerframework/framework/type/BoundsInitializer$1;)V

    invoke-direct {v1, v2, p1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;-><init>(Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;Ljava/util/Map;)V

    .line 266
    .local v1, "visitor":Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;
    invoke-virtual {v1, p0}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->initializeExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)V

    .line 267
    invoke-virtual {v1, p0}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->resolveTypeVarReferences(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 268
    invoke-static {p0, v0}, Lorg/checkerframework/framework/type/BoundsInitializer;->restoreAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 269
    return-void
.end method

.method public static initializeSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)V
    .locals 1
    .param p0, "wildcard"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 224
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/framework/type/BoundsInitializer;->initializeSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Map;)V

    .line 225
    return-void
.end method

.method private static initializeSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Map;)V
    .locals 4
    .param p0, "wildcard"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)V"
        }
    .end annotation

    .line 236
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-static {p0}, Lorg/checkerframework/framework/type/BoundsInitializer;->saveAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/util/Set;

    move-result-object v0

    .line 238
    .local v0, "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    new-instance v1, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;

    new-instance v2, Lorg/checkerframework/framework/type/BoundsInitializer$WildcardStructure;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/checkerframework/framework/type/BoundsInitializer$WildcardStructure;-><init>(Lorg/checkerframework/framework/type/BoundsInitializer$1;)V

    invoke-direct {v1, v2, p1}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;-><init>(Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;Ljava/util/Map;)V

    .line 239
    .local v1, "visitor":Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;
    invoke-virtual {v1, p0}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->initializeSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;)V

    .line 240
    invoke-virtual {v1, p0}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;->resolveTypeVarReferences(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 242
    invoke-static {p0, v0}, Lorg/checkerframework/framework/type/BoundsInitializer;->restoreAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V

    .line 243
    return-void
.end method

.method public static initializeTypeArgs(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;)V
    .locals 10
    .param p0, "declaredType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 62
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->actualType:Ljavax/lang/model/type/TypeMirror;

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 63
    .local v0, "actualType":Ljavax/lang/model/type/DeclaredType;
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->wasRaw()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    .line 69
    invoke-interface {v1, v0}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    .line 70
    .local v1, "typeElement":Ljavax/lang/model/element/TypeElement;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v2, "typeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v3, "typeArgMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 77
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->wasRaw()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    nop

    .line 79
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/TypeParameterElement;

    invoke-interface {v5}, Ljavax/lang/model/element/TypeParameterElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/type/TypeVariable;

    .line 80
    .local v5, "typeVariable":Ljavax/lang/model/type/TypeVariable;
    iget-object v6, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-static {v5, v6}, Lorg/checkerframework/framework/type/BoundsInitializer;->getUpperBoundAsWildcard(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljavax/lang/model/type/WildcardType;

    move-result-object v5

    .line 81
    .local v5, "javaTypeArg":Ljavax/lang/model/type/TypeMirror;
    goto :goto_1

    .line 82
    .end local v5    # "javaTypeArg":Ljavax/lang/model/type/TypeMirror;
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v5

    invoke-interface {v5}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/type/TypeMirror;

    .line 85
    .restart local v5    # "javaTypeArg":Ljavax/lang/model/type/TypeMirror;
    :goto_1
    iget-object v6, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 86
    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    .line 87
    .local v6, "typeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v7

    sget-object v8, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v7, v8, :cond_2

    .line 88
    move-object v7, v6

    check-cast v7, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 89
    .local v7, "wildcardType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/TypeParameterElement;

    invoke-virtual {v7, v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setTypeVariable(Ljavax/lang/model/element/TypeParameterElement;)V

    .line 90
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->wasRaw()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 91
    invoke-virtual {v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setUninferredTypeArgument()V

    .line 94
    .end local v7    # "wildcardType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    :cond_2
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    nop

    .line 100
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/element/TypeParameterElement;

    invoke-interface {v7}, Ljavax/lang/model/element/TypeParameterElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    .line 99
    invoke-static {v7}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/type/TypeVariable;

    .line 101
    .local v7, "key":Ljavax/lang/model/type/TypeVariable;
    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-interface {v5}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v8

    sget-object v9, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v8, v9, :cond_3

    .line 105
    invoke-static {v5}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Ljavax/lang/model/type/TypeVariable;

    .line 106
    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .end local v5    # "javaTypeArg":Ljavax/lang/model/type/TypeMirror;
    .end local v6    # "typeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v7    # "key":Ljavax/lang/model/type/TypeVariable;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 111
    .end local v4    # "i":I
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 112
    .local v5, "typeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    sget-object v6, Lorg/checkerframework/framework/type/BoundsInitializer$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_3

    .line 119
    :pswitch_0
    move-object v6, v5

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-static {v6, v3}, Lorg/checkerframework/framework/type/BoundsInitializer;->initializeBounds(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/util/Map;)V

    .line 120
    goto :goto_3

    .line 114
    :pswitch_1
    move-object v6, v5

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 115
    .local v6, "wildcardType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    invoke-static {v6, v3}, Lorg/checkerframework/framework/type/BoundsInitializer;->initializeExtendsBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Map;)V

    .line 116
    invoke-static {v6, v3}, Lorg/checkerframework/framework/type/BoundsInitializer;->initializeSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;Ljava/util/Map;)V

    .line 117
    nop

    .line 124
    .end local v5    # "typeArg":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v6    # "wildcardType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;
    :goto_3
    goto :goto_2

    .line 125
    :cond_5
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->typeArgs:Ljava/util/List;

    .line 126
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isImmediateBoundPath(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;)Z
    .locals 3
    .param p0, "path"    # Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

    .line 833
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 834
    sget-object v0, Lorg/checkerframework/framework/type/BoundsInitializer$1;->$SwitchMap$org$checkerframework$framework$type$BoundsInitializer$BoundPathNode$Kind:[I

    invoke-virtual {p0}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    iget-object v2, v2, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;->kind:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 837
    :pswitch_0
    return v1

    .line 844
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static restoreAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Set;)V
    .locals 0
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)V"
        }
    .end annotation

    .line 212
    .local p1, "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 215
    :cond_0
    return-void
.end method

.method private static saveAnnotations(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/util/Set;
    .locals 2
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ")",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationsField()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 203
    .local v0, "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->clearAnnotations()V

    .line 204
    return-object v0

    .line 207
    .end local v0    # "annos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
