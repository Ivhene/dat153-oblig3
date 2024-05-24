.class public Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "LiteralTreeAnnotator.java"


# static fields
.field private static final literalKindToTreeKind:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/framework/qual/LiteralKind;",
            "Lcom/sun/source/tree/Tree$Kind;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

.field private final stringPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;"
        }
    .end annotation
.end field

.field private final treeClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;"
        }
    .end annotation
.end field

.field private final treeKinds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sun/source/tree/Tree$Kind;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/checkerframework/framework/qual/LiteralKind;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->literalKindToTreeKind:Ljava/util/Map;

    .line 60
    sget-object v1, Lorg/checkerframework/framework/qual/LiteralKind;->BOOLEAN:Lorg/checkerframework/framework/qual/LiteralKind;

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->BOOLEAN_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v1, Lorg/checkerframework/framework/qual/LiteralKind;->CHAR:Lorg/checkerframework/framework/qual/LiteralKind;

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->CHAR_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v1, Lorg/checkerframework/framework/qual/LiteralKind;->DOUBLE:Lorg/checkerframework/framework/qual/LiteralKind;

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->DOUBLE_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v1, Lorg/checkerframework/framework/qual/LiteralKind;->FLOAT:Lorg/checkerframework/framework/qual/LiteralKind;

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->FLOAT_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v1, Lorg/checkerframework/framework/qual/LiteralKind;->INT:Lorg/checkerframework/framework/qual/LiteralKind;

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->INT_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v1, Lorg/checkerframework/framework/qual/LiteralKind;->LONG:Lorg/checkerframework/framework/qual/LiteralKind;

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->LONG_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lorg/checkerframework/framework/qual/LiteralKind;->NULL:Lorg/checkerframework/framework/qual/LiteralKind;

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->NULL_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v1, Lorg/checkerframework/framework/qual/LiteralKind;->STRING:Lorg/checkerframework/framework/qual/LiteralKind;

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->STRING_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 10
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 72
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 73
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sun/source/tree/Tree$Kind;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->treeKinds:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->treeClasses:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->stringPatterns:Ljava/util/Map;

    .line 77
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 80
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getSupportedTypeQualifiers()Ljava/util/Set;

    move-result-object v0

    .line 84
    .local v0, "quals":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 85
    .local v2, "qual":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v3, Lorg/checkerframework/framework/qual/QualifierForLiterals;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/qual/QualifierForLiterals;

    .line 86
    .local v3, "forLiterals":Lorg/checkerframework/framework/qual/QualifierForLiterals;
    if-nez v3, :cond_0

    .line 87
    goto :goto_0

    .line 90
    :cond_0
    nop

    .line 91
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromClass(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 92
    .local v4, "theQual":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v3}, Lorg/checkerframework/framework/qual/QualifierForLiterals;->value()[Lorg/checkerframework/framework/qual/LiteralKind;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v6, :cond_1

    aget-object v9, v5, v8

    .line 93
    .local v9, "literalKind":Lorg/checkerframework/framework/qual/LiteralKind;
    invoke-virtual {p0, v9, v4}, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->addLiteralKind(Lorg/checkerframework/framework/qual/LiteralKind;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 92
    .end local v9    # "literalKind":Lorg/checkerframework/framework/qual/LiteralKind;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 96
    :cond_1
    invoke-interface {v3}, Lorg/checkerframework/framework/qual/QualifierForLiterals;->stringPatterns()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 97
    .local v8, "pattern":Ljava/lang/String;
    invoke-virtual {p0, v8, v4}, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->addStringPattern(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 96
    .end local v8    # "pattern":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 100
    :cond_2
    invoke-interface {v3}, Lorg/checkerframework/framework/qual/QualifierForLiterals;->value()[Lorg/checkerframework/framework/qual/LiteralKind;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_3

    invoke-interface {v3}, Lorg/checkerframework/framework/qual/QualifierForLiterals;->stringPatterns()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_3

    .line 101
    sget-object v5, Lorg/checkerframework/framework/qual/LiteralKind;->ALL:Lorg/checkerframework/framework/qual/LiteralKind;

    invoke-virtual {p0, v5, v4}, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->addLiteralKind(Lorg/checkerframework/framework/qual/LiteralKind;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 103
    .end local v2    # "qual":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v3    # "forLiterals":Lorg/checkerframework/framework/qual/QualifierForLiterals;
    .end local v4    # "theQual":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    goto :goto_0

    .line 104
    :cond_4
    return-void
.end method

.method private addTreeKind(Lcom/sun/source/tree/Tree$Kind;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 4
    .param p1, "treeKind"    # Lcom/sun/source/tree/Tree$Kind;
    .param p2, "theQual"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 166
    iget-object v0, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    iget-object v1, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->treeKinds:Ljava/util/Map;

    invoke-virtual {v0, v1, p1, p2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->updateMappingToMutableSet(Ljava/util/Map;Ljava/lang/Object;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    .line 167
    .local v0, "res":Z
    if-eqz v0, :cond_0

    .line 173
    return-void

    .line 168
    :cond_0
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    iget-object v2, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->treeKinds:Ljava/util/Map;

    filled-new-array {p1, p2, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 169
    const-string v3, "LiteralTreeAnnotator: tried to add mapping %s=%s to %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addLiteralKind(Lorg/checkerframework/framework/qual/LiteralKind;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 4
    .param p1, "literalKind"    # Lorg/checkerframework/framework/qual/LiteralKind;
    .param p2, "theQual"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 141
    sget-object v0, Lorg/checkerframework/framework/qual/LiteralKind;->ALL:Lorg/checkerframework/framework/qual/LiteralKind;

    if-ne p1, v0, :cond_1

    .line 142
    invoke-static {}, Lorg/checkerframework/framework/qual/LiteralKind;->allLiteralKinds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/qual/LiteralKind;

    .line 143
    .local v1, "iterLiteralKind":Lorg/checkerframework/framework/qual/LiteralKind;
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->addLiteralKind(Lorg/checkerframework/framework/qual/LiteralKind;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 144
    .end local v1    # "iterLiteralKind":Lorg/checkerframework/framework/qual/LiteralKind;
    goto :goto_0

    :cond_0
    goto :goto_2

    .line 145
    :cond_1
    sget-object v0, Lorg/checkerframework/framework/qual/LiteralKind;->PRIMITIVE:Lorg/checkerframework/framework/qual/LiteralKind;

    if-ne p1, v0, :cond_3

    .line 146
    invoke-static {}, Lorg/checkerframework/framework/qual/LiteralKind;->primitiveLiteralKinds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/qual/LiteralKind;

    .line 147
    .restart local v1    # "iterLiteralKind":Lorg/checkerframework/framework/qual/LiteralKind;
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->addLiteralKind(Lorg/checkerframework/framework/qual/LiteralKind;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 148
    .end local v1    # "iterLiteralKind":Lorg/checkerframework/framework/qual/LiteralKind;
    goto :goto_1

    :cond_2
    goto :goto_2

    .line 150
    :cond_3
    sget-object v0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->literalKindToTreeKind:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/Tree$Kind;

    .line 151
    .local v0, "treeKind":Lcom/sun/source/tree/Tree$Kind;
    if-eqz v0, :cond_4

    .line 152
    invoke-direct {p0, v0, p2}, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->addTreeKind(Lcom/sun/source/tree/Tree$Kind;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 157
    .end local v0    # "treeKind":Lcom/sun/source/tree/Tree$Kind;
    :goto_2
    return-void

    .line 154
    .restart local v0    # "treeKind":Lcom/sun/source/tree/Tree$Kind;
    :cond_4
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LiteralKind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not mapped to a Tree.Kind."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addStandardLiteralQualifiers()Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;
    .locals 5

    .line 115
    iget-object v0, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->treeKinds:Ljava/util/Map;

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->NULL_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getBottomAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 117
    .local v1, "bottom":Ljavax/lang/model/element/AnnotationMirror;
    sget-object v2, Lorg/checkerframework/framework/qual/LiteralKind;->NULL:Lorg/checkerframework/framework/qual/LiteralKind;

    invoke-virtual {p0, v2, v1}, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->addLiteralKind(Lorg/checkerframework/framework/qual/LiteralKind;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 118
    .end local v1    # "bottom":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 119
    :cond_0
    return-object p0

    .line 121
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v0

    .line 122
    .local v0, "tops":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v1, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->treeKinds:Ljava/util/Map;

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->NULL_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 123
    .local v1, "defaultForNull":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 124
    return-object p0

    .line 126
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 127
    .local v3, "top":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v4, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v4, v1, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    if-nez v4, :cond_3

    .line 128
    iget-object v4, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v4, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getBottomAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v3    # "top":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    goto :goto_1

    .line 131
    :cond_4
    return-object p0
.end method

.method public addStringPattern(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "theQual"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 182
    iget-object v0, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    iget-object v1, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->stringPatterns:Ljava/util/Map;

    .line 184
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 183
    invoke-virtual {v0, v1, v2, p2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->updateMappingToMutableSet(Ljava/util/Map;Ljava/lang/Object;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    .line 185
    .local v0, "res":Z
    if-eqz v0, :cond_0

    .line 194
    return-void

    .line 186
    :cond_0
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LiteralTreeAnnotator: invalid update of stringPatterns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->stringPatterns:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->defaultAction(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public defaultAction(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 9
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 198
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    .line 207
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->treeKinds:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->treeKinds:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 209
    .local v1, "fnd":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addMissingAnnotations(Ljava/lang/Iterable;)V

    .end local v1    # "fnd":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    goto :goto_1

    .line 210
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->treeClasses:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 212
    .local v1, "t":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sun/source/tree/Tree;>;"
    iget-object v2, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->treeClasses:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    iget-object v2, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->treeClasses:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 214
    .local v2, "fnd":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addMissingAnnotations(Ljava/lang/Iterable;)V

    .line 216
    .end local v2    # "fnd":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 217
    .local v5, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v6, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->treeClasses:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 218
    iget-object v6, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->treeClasses:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 219
    .local v6, "fnd":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p2, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addMissingAnnotations(Ljava/lang/Iterable;)V

    .line 220
    iget-object v7, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->treeClasses:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v7, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "fnd":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "t":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sun/source/tree/Tree;>;"
    :cond_4
    :goto_1
    nop

    .line 224
    :cond_5
    return-object v0

    .line 199
    :cond_6
    :goto_2
    return-object v0
.end method

.method public bridge synthetic visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->visitLiteral(Lcom/sun/source/tree/LiteralTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitLiteral(Lcom/sun/source/tree/LiteralTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 10
    .param p1, "tree"    # Lcom/sun/source/tree/LiteralTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 230
    iget-object v0, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->stringPatterns:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->STRING_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_5

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v1, "nonMatches":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 235
    .local v2, "string":Ljava/lang/String;
    iget-object v3, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->stringPatterns:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/regex/Pattern;

    .line 236
    .local v4, "pattern":Ljava/util/regex/Pattern;
    iget-object v5, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->stringPatterns:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 237
    .local v5, "sam":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 238
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 240
    :cond_0
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    .end local v5    # "sam":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :goto_1
    goto :goto_0

    .line 243
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 244
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 245
    .local v4, "res":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 246
    .local v6, "sam":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v7, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v7, v4, v6}, Lorg/checkerframework/framework/type/QualifierHierarchy;->greatestLowerBounds(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v4

    .line 247
    .end local v6    # "sam":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    goto :goto_2

    .line 249
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 250
    .restart local v6    # "sam":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v7, p0, Lorg/checkerframework/framework/type/treeannotator/LiteralTreeAnnotator;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v7, v4, v6}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 261
    .end local v6    # "sam":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    goto :goto_3

    .line 251
    .restart local v6    # "sam":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_3
    new-instance v5, Lorg/checkerframework/javacutil/BugInCF;

    .line 253
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/CharSequence;

    const-string v9, "Bug in @QualifierForLiterals(stringpatterns=...) in type hierarchy definition:"

    aput-object v9, v8, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " inferred type for \""

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "\" is "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x1

    aput-object v3, v8, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " which is a subtype of "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x2

    aput-object v3, v8, v9

    const/4 v3, 0x3

    const-string v9, " but its pattern does not match the string."

    aput-object v9, v8, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  matches = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x4

    aput-object v3, v8, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  nonMatches = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x5

    aput-object v3, v8, v9

    .line 252
    invoke-static {v7, v8}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v5

    .line 262
    .end local v6    # "sam":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_4
    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 265
    .end local v0    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;>;"
    .end local v1    # "nonMatches":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;>;"
    .end local v2    # "string":Ljava/lang/String;
    .end local v4    # "res":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_5
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;->visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
