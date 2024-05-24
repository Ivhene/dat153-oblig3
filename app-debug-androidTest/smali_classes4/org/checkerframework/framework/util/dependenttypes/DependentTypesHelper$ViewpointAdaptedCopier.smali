.class Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ViewpointAdaptedCopier;
.super Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;
.source "DependentTypesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewpointAdaptedCopier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;


# direct methods
.method private constructor <init>(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ViewpointAdaptedCopier;->this$0:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;
    .param p2, "x1"    # Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$1;

    .line 865
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ViewpointAdaptedCopier;-><init>(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic combineRs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 865
    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ViewpointAdaptedCopier;->combineRs(Ljava/lang/Void;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected combineRs(Ljava/lang/Void;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "r1"    # Ljava/lang/Void;
    .param p2, "r2"    # Ljava/lang/Void;

    .line 907
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic compare(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;
    .locals 0

    .line 865
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ViewpointAdaptedCopier;->compare(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected compare(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "p"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 896
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 899
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 902
    return-object v0

    .line 900
    :cond_1
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "Should be the same. type: %s p: %s "

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 897
    :cond_2
    :goto_0
    return-object v0
.end method

.method protected bridge synthetic scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 865
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ViewpointAdaptedCopier;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;
    .locals 0

    .line 865
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ViewpointAdaptedCopier;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 5
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "p"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 868
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 871
    :cond_0
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v1

    .line 872
    .local v1, "replacement":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v2, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ViewpointAdaptedCopier;->this$0:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    invoke-static {v2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->access$600(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 873
    .local v3, "vpa":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 874
    .local v4, "anno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v4, :cond_1

    .line 876
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 878
    .end local v3    # "vpa":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v4    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    goto :goto_0

    .line 879
    :cond_2
    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotations(Ljava/lang/Iterable;)V

    .line 880
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 889
    return-object v0

    .line 891
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeComparer;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0

    .line 869
    .end local v1    # "replacement":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_4
    :goto_1
    return-object v0
.end method
