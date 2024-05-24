.class public final enum Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;
.super Ljava/lang/Enum;
.source "ShiftRight.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/ShiftRight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Unsigned"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;


# instance fields
.field private final opcode:I

.field private final stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 97
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

    const/16 v1, 0x7c

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v3, "INTEGER"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;->INTEGER:Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

    .line 102
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

    const/16 v2, 0x7d

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v4, "LONG"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;->LONG:Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

    .line 92
    filled-new-array {v0, v1}, [Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

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

    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;->opcode:I

    .line 122
    iput-object p4, p0, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    .line 123
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 92
    const-class v0, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;
    .locals 1

    .line 92
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 136
    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;->opcode:I

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 137
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toDecreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 129
    const/4 v0, 0x1

    return v0
.end method
