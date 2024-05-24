.class public Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory$KeyForTypeHierarchy;
.super Lorg/checkerframework/framework/type/DefaultTypeHierarchy;
.source "KeyForAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/nullness/KeyForAnnotatedTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "KeyForTypeHierarchy"
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/QualifierHierarchy;ZZ)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .param p2, "qualifierHierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .param p3, "ignoreRawTypes"    # Z
    .param p4, "invariantArrayComponents"    # Z

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/QualifierHierarchy;ZZ)V

    .line 118
    return-void
.end method


# virtual methods
.method protected isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 3
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "top"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 125
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 128
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    return v2

    .line 134
    :cond_0
    const-class v0, Lorg/checkerframework/checker/nullness/qual/KeyForBottom;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    return v2

    .line 137
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method
