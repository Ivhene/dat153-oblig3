.class public Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;
.super Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
.source "InferredValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InferredType"
.end annotation


# instance fields
.field public final type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 0
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 29
    invoke-direct {p0}, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredType;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 31
    return-void
.end method
