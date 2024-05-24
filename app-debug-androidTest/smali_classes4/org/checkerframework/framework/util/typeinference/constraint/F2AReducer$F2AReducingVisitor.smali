.class Lorg/checkerframework/framework/util/typeinference/constraint/F2AReducer$F2AReducingVisitor;
.super Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;
.source "F2AReducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/typeinference/constraint/F2AReducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "F2AReducingVisitor"
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 1
    .param p1, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 60
    const-class v0, Lorg/checkerframework/framework/util/typeinference/constraint/F2A;

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/framework/util/typeinference/constraint/AFReducingVisitor;-><init>(Ljava/lang/Class;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 61
    return-void
.end method


# virtual methods
.method public makeConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 66
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/constraint/F2A;

    invoke-direct {v0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/constraint/F2A;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    return-object v0
.end method

.method public makeEqualityConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 78
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;

    invoke-direct {v0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/constraint/FIsA;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    return-object v0
.end method

.method public makeInverseConstraint(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/util/typeinference/constraint/AFConstraint;
    .locals 1
    .param p1, "subtype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "supertype"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 72
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/constraint/A2F;

    invoke-direct {v0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/constraint/A2F;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    return-object v0
.end method
