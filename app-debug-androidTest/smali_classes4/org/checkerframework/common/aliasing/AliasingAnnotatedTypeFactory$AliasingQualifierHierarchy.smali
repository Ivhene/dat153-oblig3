.class public Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory$AliasingQualifierHierarchy;
.super Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;
.source "AliasingAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AliasingQualifierHierarchy"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;


# direct methods
.method protected constructor <init>(Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;
    .param p2, "f"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 93
    iput-object p1, p0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory$AliasingQualifierHierarchy;->this$0:Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;

    .line 94
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;-><init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V

    .line 95
    return-void
.end method

.method private isLeakedQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 2
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 122
    iget-object v0, p0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory$AliasingQualifierHierarchy;->this$0:Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/common/aliasing/qual/MaybeLeaked;

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory$AliasingQualifierHierarchy;->this$0:Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/common/aliasing/qual/NonLeaked;

    .line 123
    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory$AliasingQualifierHierarchy;->this$0:Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;

    const-class v1, Lorg/checkerframework/common/aliasing/qual/LeakedToResult;

    .line 124
    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 122
    :goto_1
    return v0
.end method


# virtual methods
.method protected findBottoms(Ljava/util/Map;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;)",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 100
    .local p1, "supertypes":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;>;"
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    .line 101
    .local v0, "newbottoms":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v1, p0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory$AliasingQualifierHierarchy;->this$0:Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->UNIQUE:Ljavax/lang/model/element/AnnotationMirror;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, p0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory$AliasingQualifierHierarchy;->this$0:Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->MAYBE_LEAKED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    return-object v0
.end method

.method protected findTops(Ljava/util/Map;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;)",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 109
    .local p1, "supertypes":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/element/AnnotationMirror;Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;>;"
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    .line 110
    .local v0, "newtops":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v1, p0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory$AliasingQualifierHierarchy;->this$0:Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->MAYBE_ALIASED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v1, p0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory$AliasingQualifierHierarchy;->this$0:Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->NON_LEAKED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    return-object v0
.end method

.method public isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "subAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "superAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 129
    invoke-direct {p0, p2}, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory$AliasingQualifierHierarchy;->isLeakedQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory$AliasingQualifierHierarchy;->isLeakedQualifier(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x1

    return v0

    .line 138
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method
