.class public abstract enum Lnet/bytebuddy/implementation/bytecode/Duplication;
.super Ljava/lang/Enum;
.source "Duplication.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/Duplication$WithFlip;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/Duplication;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/Duplication;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

.field public static final enum SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

.field public static final enum ZERO:Lnet/bytebuddy/implementation/bytecode/Duplication;


# instance fields
.field private final opcode:I

.field protected final size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 31
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/Duplication$1;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v2, "ZERO"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lnet/bytebuddy/implementation/bytecode/Duplication$1;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/Duplication;->ZERO:Lnet/bytebuddy/implementation/bytecode/Duplication;

    .line 46
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/Duplication$2;

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/16 v4, 0x59

    const-string v5, "SINGLE"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v4}, Lnet/bytebuddy/implementation/bytecode/Duplication$2;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;I)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/Duplication;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    .line 63
    new-instance v2, Lnet/bytebuddy/implementation/bytecode/Duplication$3;

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/16 v5, 0x5c

    const-string v7, "DOUBLE"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v4, v5}, Lnet/bytebuddy/implementation/bytecode/Duplication$3;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;I)V

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/Duplication;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    .line 26
    const/4 v4, 0x3

    new-array v4, v4, [Lnet/bytebuddy/implementation/bytecode/Duplication;

    aput-object v0, v4, v3

    aput-object v1, v4, v6

    aput-object v2, v4, v8

    sput-object v4, Lnet/bytebuddy/implementation/bytecode/Duplication;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/Duplication;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;I)V
    .locals 0
    .param p3, "stackSize"    # Lnet/bytebuddy/implementation/bytecode/StackSize;
    .param p4, "opcode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bytecode/StackSize;",
            "I)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    invoke-virtual {p3}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/Duplication;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    .line 95
    iput p4, p0, Lnet/bytebuddy/implementation/bytecode/Duplication;->opcode:I

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;ILnet/bytebuddy/implementation/bytecode/Duplication$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/bytebuddy/implementation/bytecode/StackSize;
    .param p4, "x3"    # I
    .param p5, "x4"    # Lnet/bytebuddy/implementation/bytecode/Duplication$1;

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/implementation/bytecode/Duplication;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;I)V

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/Duplication;
    .locals 3
    .param p0, "typeDefinition"    # Lnet/bytebuddy/description/type/TypeDefinition;

    .line 105
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/Duplication$4;->$SwitchMap$net$bytebuddy$implementation$bytecode$StackSize:[I

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 113
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 111
    :pswitch_0
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/Duplication;->ZERO:Lnet/bytebuddy/implementation/bytecode/Duplication;

    return-object v0

    .line 109
    :pswitch_1
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/Duplication;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    return-object v0

    .line 107
    :pswitch_2
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/Duplication;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/Duplication;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lnet/bytebuddy/implementation/bytecode/Duplication;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bytecode/Duplication;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/Duplication;
    .locals 1

    .line 26
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/Duplication;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/Duplication;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/Duplication;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/Duplication;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 136
    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/Duplication;->opcode:I

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 137
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/Duplication;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object v0
.end method

.method public abstract flipOver(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end method

.method public isValid()Z
    .locals 1

    .line 129
    const/4 v0, 0x1

    return v0
.end method
