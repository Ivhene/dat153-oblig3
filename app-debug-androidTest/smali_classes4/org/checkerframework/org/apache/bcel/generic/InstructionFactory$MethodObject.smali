.class Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;
.super Ljava/lang/Object;
.source "InstructionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodObject"
.end annotation


# instance fields
.field final arg_types:[Lorg/checkerframework/org/apache/bcel/generic/Type;

.field final class_name:Ljava/lang/String;

.field final name:Ljava/lang/String;

.field final result_type:Lorg/checkerframework/org/apache/bcel/generic/Type;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/Type;)V
    .locals 0
    .param p1, "c"    # Ljava/lang/String;
    .param p2, "n"    # Ljava/lang/String;
    .param p3, "r"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .param p4, "a"    # [Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;->class_name:Ljava/lang/String;

    .line 188
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;->name:Ljava/lang/String;

    .line 189
    iput-object p3, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;->result_type:Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 190
    iput-object p4, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionFactory$MethodObject;->arg_types:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 191
    return-void
.end method
