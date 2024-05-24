.class Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ExpressionErrorChecker;
.super Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;
.source "DependentTypesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpressionErrorChecker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<",
        "Ljava/util/List<",
        "Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;


# direct methods
.method private constructor <init>(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;)V
    .locals 0

    .line 830
    iput-object p1, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ExpressionErrorChecker;->this$0:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;
    .param p2, "x1"    # Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$1;

    .line 830
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ExpressionErrorChecker;-><init>(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 830
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ExpressionErrorChecker;->reduce(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected reduce(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;",
            ">;",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;",
            ">;"
        }
    .end annotation

    .line 851
    .local p1, "r1":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;>;"
    .local p2, "r2":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 852
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 853
    return-object p1

    .line 854
    :cond_0
    if-eqz p1, :cond_1

    .line 855
    return-object p1

    .line 856
    :cond_1
    if-eqz p2, :cond_2

    .line 857
    return-object p2

    .line 859
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 830
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ExpressionErrorChecker;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "aVoid"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;",
            ">;"
        }
    .end annotation

    .line 835
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 836
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 837
    .local v2, "am":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v3, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ExpressionErrorChecker;->this$0:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    invoke-static {v3, v2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->access$400(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 838
    iget-object v3, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ExpressionErrorChecker;->this$0:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    invoke-static {v3, v2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->access$500(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 840
    .end local v2    # "am":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 841
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 842
    .local v1, "superList":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;>;"
    if-eqz v1, :cond_2

    .line 843
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 845
    :cond_2
    return-object v0
.end method
