.class public final enum Lnet/bytebuddy/implementation/bytecode/ShiftRight;
.super Ljava/lang/Enum;
.source "ShiftRight.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/ShiftRight;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/ShiftRight;

.field public static final enum INTEGER:Lnet/bytebuddy/implementation/bytecode/ShiftRight;

.field public static final enum LONG:Lnet/bytebuddy/implementation/bytecode/ShiftRight;


# instance fields
.field private final opcode:I

.field private final stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

.field private final unsigned:Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 30
    new-instance v6, Lnet/bytebuddy/implementation/bytecode/ShiftRight;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    const/16 v3, 0x7a

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    sget-object v5, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;->INTEGER:Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/bytecode/ShiftRight;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    sput-object v6, Lnet/bytebuddy/implementation/bytecode/ShiftRight;->INTEGER:Lnet/bytebuddy/implementation/bytecode/ShiftRight;

    .line 35
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/ShiftRight;

    const-string v8, "LONG"

    const/4 v9, 0x1

    const/16 v10, 0x7b

    sget-object v11, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    sget-object v12, Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;->LONG:Lnet/bytebuddy/implementation/bytecode/ShiftRight$Unsigned;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lnet/bytebuddy/implementation/bytecode/ShiftRight;-><init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/ShiftRight;->LONG:Lnet/bytebuddy/implementation/bytecode/ShiftRight;

    .line 25
    filled-new-array {v6, v0}, [Lnet/bytebuddy/implementation/bytecode/ShiftRight;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/ShiftRight;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/ShiftRight;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILnet/bytebuddy/implementation/bytecode/StackSize;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 0
    .param p3, "opcode"    # I
    .param p4, "stackSize"    # Lnet/bytebuddy/implementation/bytecode/StackSize;
    .param p5, "unsigned"    # Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/bytebuddy/implementation/bytecode/StackSize;",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/ShiftRight;->opcode:I

    .line 61
    iput-object p4, p0, Lnet/bytebuddy/implementation/bytecode/ShiftRight;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    .line 62
    iput-object p5, p0, Lnet/bytebuddy/implementation/bytecode/ShiftRight;->unsigned:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 63
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/ShiftRight;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lnet/bytebuddy/implementation/bytecode/ShiftRight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bytecode/ShiftRight;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/ShiftRight;
    .locals 1

    .line 25
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/ShiftRight;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/ShiftRight;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/ShiftRight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/ShiftRight;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 85
    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/ShiftRight;->opcode:I

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 86
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/ShiftRight;->stackSize:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toDecreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public toUnsigned()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 71
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/ShiftRight;->unsigned:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    return-object v0
.end method
