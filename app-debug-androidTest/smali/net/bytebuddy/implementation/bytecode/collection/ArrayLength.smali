.class public final enum Lnet/bytebuddy/implementation/bytecode/collection/ArrayLength;
.super Ljava/lang/Enum;
.source "ArrayLength.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/collection/ArrayLength;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/collection/ArrayLength;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bytecode/collection/ArrayLength;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayLength;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayLength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayLength;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/collection/ArrayLength;

    .line 26
    filled-new-array {v0}, [Lnet/bytebuddy/implementation/bytecode/collection/ArrayLength;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayLength;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/collection/ArrayLength;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/collection/ArrayLength;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayLength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayLength;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/collection/ArrayLength;
    .locals 1

    .line 26
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayLength;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/collection/ArrayLength;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/collection/ArrayLength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/collection/ArrayLength;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 44
    const/16 v0, 0xbe

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 45
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 37
    const/4 v0, 0x1

    return v0
.end method
