.class final Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchTarget;
.super Ljava/lang/Object;
.source "MethodGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BranchTarget"
.end annotation


# instance fields
.field final stackDepth:I

.field final target:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;


# direct methods
.method constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;I)V
    .locals 0
    .param p1, "target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "stackDepth"    # I

    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 951
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchTarget;->target:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 952
    iput p2, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$BranchTarget;->stackDepth:I

    .line 953
    return-void
.end method
