.class Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ContainsDependentType;
.super Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;
.source "DependentTypesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainsDependentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;


# direct methods
.method private constructor <init>(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;)V
    .locals 0

    .line 928
    iput-object p1, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ContainsDependentType;->this$0:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;
    .param p2, "x1"    # Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$1;

    .line 928
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ContainsDependentType;-><init>(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;)V

    return-void
.end method


# virtual methods
.method protected reduce(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "r1"    # Ljava/lang/Boolean;
    .param p2, "r2"    # Ljava/lang/Boolean;

    .line 941
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 943
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 944
    :cond_2
    if-eqz p1, :cond_3

    .line 945
    return-object p1

    .line 946
    :cond_3
    if-eqz p2, :cond_4

    .line 947
    return-object p2

    .line 949
    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 928
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ContainsDependentType;->reduce(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 931
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/AnnotationMirror;

    .line 932
    .local v1, "am":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ContainsDependentType;->this$0:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    invoke-static {v2, v1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->access$400(Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 933
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 935
    .end local v1    # "am":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 936
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method protected bridge synthetic scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 928
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper$ContainsDependentType;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
