.class public enum Lnet/bytebuddy/implementation/bytecode/Removal;
.super Ljava/lang/Enum;
.source "Removal.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/Removal;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/Removal;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/Removal;

.field public static final enum SINGLE:Lnet/bytebuddy/implementation/bytecode/Removal;

.field public static final enum ZERO:Lnet/bytebuddy/implementation/bytecode/Removal;


# instance fields
.field private final opcode:I

.field private final size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 31
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/Removal$1;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v2, "ZERO"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lnet/bytebuddy/implementation/bytecode/Removal$1;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/Removal;->ZERO:Lnet/bytebuddy/implementation/bytecode/Removal;

    .line 41
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/Removal;

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/16 v4, 0x57

    const-string v5, "SINGLE"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v4}, Lnet/bytebuddy/implementation/bytecode/Removal;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;I)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/Removal;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Removal;

    .line 46
    new-instance v2, Lnet/bytebuddy/implementation/bytecode/Removal;

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const/16 v5, 0x58

    const-string v7, "DOUBLE"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v4, v5}, Lnet/bytebuddy/implementation/bytecode/Removal;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;I)V

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/Removal;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/Removal;

    .line 26
    const/4 v4, 0x3

    new-array v4, v4, [Lnet/bytebuddy/implementation/bytecode/Removal;

    aput-object v0, v4, v3

    aput-object v1, v4, v6

    aput-object v2, v4, v8

    sput-object v4, Lnet/bytebuddy/implementation/bytecode/Removal;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/Removal;

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

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    invoke-virtual {p3}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toDecreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/Removal;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    .line 66
    iput p4, p0, Lnet/bytebuddy/implementation/bytecode/Removal;->opcode:I

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;ILnet/bytebuddy/implementation/bytecode/Removal$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/bytebuddy/implementation/bytecode/StackSize;
    .param p4, "x3"    # I
    .param p5, "x4"    # Lnet/bytebuddy/implementation/bytecode/Removal$1;

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/implementation/bytecode/Removal;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;I)V

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2
    .param p0, "typeDefinition"    # Lnet/bytebuddy/description/type/TypeDefinition;

    .line 76
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/Removal$2;->$SwitchMap$net$bytebuddy$implementation$bytecode$StackSize:[I

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 82
    :pswitch_0
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/Removal;->ZERO:Lnet/bytebuddy/implementation/bytecode/Removal;

    return-object v0

    .line 80
    :pswitch_1
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/Removal;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/Removal;

    return-object v0

    .line 78
    :pswitch_2
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/Removal;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Removal;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/Removal;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lnet/bytebuddy/implementation/bytecode/Removal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bytecode/Removal;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/Removal;
    .locals 1

    .line 26
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/Removal;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/Removal;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/Removal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/Removal;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 99
    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/Removal;->opcode:I

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 100
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/Removal;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 92
    const/4 v0, 0x1

    return v0
.end method
