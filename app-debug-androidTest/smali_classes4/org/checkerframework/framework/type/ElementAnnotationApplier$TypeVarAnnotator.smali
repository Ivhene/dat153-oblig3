.class Lorg/checkerframework/framework/type/ElementAnnotationApplier$TypeVarAnnotator;
.super Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;
.source "ElementAnnotationApplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/ElementAnnotationApplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeVarAnnotator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<",
        "Ljava/lang/Void;",
        "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/framework/type/ElementAnnotationApplier$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/framework/type/ElementAnnotationApplier$1;

    .line 215
    invoke-direct {p0}, Lorg/checkerframework/framework/type/ElementAnnotationApplier$TypeVarAnnotator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 215
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/ElementAnnotationApplier$TypeVarAnnotator;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Ljava/lang/Void;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    .param p2, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 218
    nop

    .line 219
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeParameterElement;

    .line 221
    .local v0, "tpelt":Ljavax/lang/model/element/TypeParameterElement;
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUpperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-interface {v0}, Ljavax/lang/model/element/TypeParameterElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->TYPE_PARAMETER:Ljavax/lang/model/element/ElementKind;

    if-eq v1, v2, :cond_0

    .line 225
    :try_start_0
    invoke-static {p1, v0, p2}, Lorg/checkerframework/framework/type/ElementAnnotationApplier;->access$100(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    :try_end_0
    .catch Lorg/checkerframework/framework/util/element/ElementAnnotationUtil$UnexpectedAnnotationLocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    goto :goto_0

    .line 226
    :catch_0
    move-exception v1

    .line 232
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->visitTypeVariable(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1
.end method
