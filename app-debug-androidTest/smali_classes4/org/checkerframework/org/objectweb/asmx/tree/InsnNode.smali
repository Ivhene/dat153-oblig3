.class public Lorg/checkerframework/org/objectweb/asmx/tree/InsnNode;
.super Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
.source "InsnNode.java"


# static fields
.field private static final INSNS:[Lorg/checkerframework/org/objectweb/asmx/tree/InsnNode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    const/16 v0, 0xff

    new-array v0, v0, [Lorg/checkerframework/org/objectweb/asmx/tree/InsnNode;

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/InsnNode;->INSNS:[Lorg/checkerframework/org/objectweb/asmx/tree/InsnNode;

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/tree/InsnNode;->INSNS:[Lorg/checkerframework/org/objectweb/asmx/tree/InsnNode;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 46
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/tree/InsnNode;

    invoke-direct {v2, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/InsnNode;-><init>(I)V

    aput-object v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 81
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;-><init>(I)V

    .line 82
    return-void
.end method

.method public static final getByOpcode(I)Lorg/checkerframework/org/objectweb/asmx/tree/InsnNode;
    .locals 1
    .param p0, "opcode"    # I

    .line 59
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/InsnNode;->INSNS:[Lorg/checkerframework/org/objectweb/asmx/tree/InsnNode;

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;)V
    .locals 1
    .param p1, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    .line 90
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/InsnNode;->opcode:I

    invoke-interface {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 91
    return-void
.end method

.method public getType()I
    .locals 1

    .line 94
    const/4 v0, 0x0

    return v0
.end method
