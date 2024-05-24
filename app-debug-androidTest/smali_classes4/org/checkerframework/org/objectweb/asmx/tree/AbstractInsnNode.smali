.class public abstract Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
.super Ljava/lang/Object;
.source "AbstractInsnNode.java"


# static fields
.field public static final FIELD_INSN:I = 0x4

.field public static final FRAME:I = 0xe

.field public static final IINC_INSN:I = 0xa

.field public static final INSN:I = 0x0

.field public static final INT_INSN:I = 0x1

.field public static final INVOKE_DYNAMIC_INSN:I = 0x6

.field public static final JUMP_INSN:I = 0x7

.field public static final LABEL:I = 0x8

.field public static final LDC_INSN:I = 0x9

.field public static final LINE:I = 0xf

.field public static final LOOKUPSWITCH_INSN:I = 0xc

.field public static final METHOD_INSN:I = 0x5

.field public static final MULTIANEWARRAY_INSN:I = 0xd

.field public static final TABLESWITCH_INSN:I = 0xb

.field public static final TYPE_INSN:I = 0x3

.field public static final VAR_INSN:I = 0x2


# instance fields
.field public invisibleTypeAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/objectweb/asmx/tree/TypeAnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field protected opcode:I

.field public visibleTypeAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/objectweb/asmx/tree/TypeAnnotationNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;->opcode:I

    .line 157
    return-void
.end method


# virtual methods
.method public abstract accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
.end method

.method protected final acceptAnnotations(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 0
    .param p1, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 205
    return-void
.end method

.method public getOpcode()I
    .locals 1

    .line 165
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;->opcode:I

    return v0
.end method

.method public abstract getType()I
.end method
