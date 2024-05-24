.class public interface abstract Lorg/checkerframework/org/apache/bcel/generic/InstructionComparator;
.super Ljava/lang/Object;
.source "InstructionComparator.java"


# static fields
.field public static final DEFAULT:Lorg/checkerframework/org/apache/bcel/generic/InstructionComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionComparator$1;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionComparator$1;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionComparator;->DEFAULT:Lorg/checkerframework/org/apache/bcel/generic/InstructionComparator;

    return-void
.end method


# virtual methods
.method public abstract equals(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Z
.end method
