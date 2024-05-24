.class public final Lorg/checkerframework/org/apache/bcel/generic/TargetLostException;
.super Ljava/lang/Exception;
.source "TargetLostException.java"


# static fields
.field private static final serialVersionUID:J = -0x5f29ed28eafebc00L


# instance fields
.field private final targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;


# direct methods
.method constructor <init>([Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Ljava/lang/String;)V
    .locals 0
    .param p1, "t"    # [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "mesg"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/TargetLostException;->targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 57
    return-void
.end method


# virtual methods
.method public getTargets()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/TargetLostException;->targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-object v0
.end method
