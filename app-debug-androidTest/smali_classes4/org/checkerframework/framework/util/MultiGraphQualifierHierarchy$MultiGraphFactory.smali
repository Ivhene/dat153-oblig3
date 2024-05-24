.class public Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;
.super Ljava/lang/Object;
.source "MultiGraphQualifierHierarchy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiGraphFactory"
.end annotation


# instance fields
.field protected final atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

.field protected final polyQualifiers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end field

.field protected final supertypesDirect:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;"
        }
    .end annotation
.end field

.field private wasBuilt:Z


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 1
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->wasBuilt:Z

    .line 79
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->supertypesDirect:Ljava/util/Map;

    .line 80
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->polyQualifiers:Ljava/util/Map;

    .line 81
    iput-object p1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 82
    return-void
.end method


# virtual methods
.method public addQualifier(Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 3
    .param p1, "qual"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 89
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->assertNotBuilt()V

    .line 90
    iget-object v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->supertypesDirect:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    return-void

    .line 94
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/framework/type/poly/QualifierPolymorphism;->getPolymorphicQualifierElement(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/Name;

    move-result-object v0

    .line 95
    .local v0, "pqtopclass":Ljavax/lang/model/element/Name;
    if-eqz v0, :cond_1

    .line 96
    iget-object v1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 97
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromName(Ljavax/lang/model/util/Elements;Ljava/lang/CharSequence;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 99
    .local v1, "pqtop":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->polyQualifiers:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .end local v1    # "pqtop":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 101
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->supertypesDirect:Ljava/util/Map;

    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :goto_0
    return-void
.end method

.method public addSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 1
    .param p1, "sub"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "sup"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 113
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->assertNotBuilt()V

    .line 114
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->addQualifier(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 115
    invoke-virtual {p0, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->addQualifier(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 116
    iget-object v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->supertypesDirect:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method protected assertNotBuilt()V
    .locals 2

    .line 139
    iget-boolean v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->wasBuilt:Z

    if-nez v0, :cond_0

    .line 142
    return-void

    .line 140
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "MultiGraphQualifierHierarchy.Factory was already built."

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 2

    .line 124
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->assertNotBuilt()V

    .line 125
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->createQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 126
    .local v0, "result":Lorg/checkerframework/framework/type/QualifierHierarchy;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->wasBuilt:Z

    .line 127
    return-object v0
.end method

.method protected createQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v0, p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->createQualifierHierarchy(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    return-object v0
.end method
