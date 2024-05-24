.class public final enum Lnet/bytebuddy/implementation/bytecode/ShiftLeft;
.super Ljava/lang/Enum;
.source "ShiftLeft.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/ShiftLeft;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bytecode/ShiftLeft;


# instance fields
.field private final opcode:I

.field private final stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 30
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

    const/16 v1, 0x78

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v3, "INTEGER"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;->INTEGER:Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

    .line 35
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

    const/16 v2, 0x79

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v4, "LONG"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;->LONG:Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

    .line 25
    filled-new-array {v0, v1}, [Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V
    .locals 0
    .param p3, "opcode"    # I
    .param p4, "stackSize"    # Lnet/bytebuddy/implementation/bytecode/StackSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/bytebuddy/implementation/bytecode/StackSize;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;->opcode:I

    .line 55
    iput-object p4, p0, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/ShiftLeft;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/ShiftLeft;
    .locals 1

    .line 25
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/ShiftLeft;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/ShiftLeft;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 69
    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;->opcode:I

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 70
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/ShiftLeft;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toDecreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 62
    const/4 v0, 0x1

    return v0
.end method
