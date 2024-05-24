.class Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory$LessThanQualifierHierarchy;
.super Lorg/checkerframework/framework/util/GraphQualifierHierarchy;
.source "LessThanAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LessThanQualifierHierarchy"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;
    .param p2, "f"    # Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;

    .line 79
    iput-object p1, p0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory$LessThanQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;

    .line 80
    invoke-static {p1}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->access$000(Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/checkerframework/framework/util/GraphQualifierHierarchy;-><init>(Lorg/checkerframework/framework/util/MultiGraphQualifierHierarchy$MultiGraphFactory;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 81
    return-void
.end method


# virtual methods
.method public greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 115
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory$LessThanQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    return-object p1

    .line 117
    :cond_0
    invoke-virtual {p0, p2, p1}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory$LessThanQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    return-object p2

    .line 121
    :cond_1
    invoke-static {p1}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getLessThanExpressions(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 122
    .local v0, "a1List":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getLessThanExpressions(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 123
    .local v1, "a2List":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    .local v2, "glb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    iget-object v3, p0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory$LessThanQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->createLessThanQualifier(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    return-object v3
.end method

.method public isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 3
    .param p1, "subAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "superAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 85
    invoke-static {p1}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getLessThanExpressions(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 86
    .local v0, "subList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 87
    const/4 v1, 0x1

    return v1

    .line 89
    :cond_0
    invoke-static {p2}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getLessThanExpressions(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, "superList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 91
    const/4 v2, 0x0

    return v2

    .line 94
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    return v2
.end method

.method public leastUpperBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "a1"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "a2"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 99
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory$LessThanQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    return-object p2

    .line 101
    :cond_0
    invoke-virtual {p0, p2, p1}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory$LessThanQualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    return-object p1

    .line 105
    :cond_1
    invoke-static {p1}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getLessThanExpressions(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 106
    .local v0, "a1List":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getLessThanExpressions(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 107
    .local v1, "a2List":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    .local v2, "lub":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 110
    iget-object v3, p0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory$LessThanQualifierHierarchy;->this$0:Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->createLessThanQualifier(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    return-object v3
.end method
