.class public final enum Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$NoOp;
.super Ljava/lang/Enum;
.source "EqualsMethod.java"

# interfaces
.implements Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$NoOp;",
        ">;",
        "Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 374
    new-instance v0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$NoOp;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$NoOp;

    .line 369
    filled-new-array {v0}, [Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$NoOp;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$NoOp;->$VALUES:[Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 369
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$NoOp;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 369
    const-class v0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$NoOp;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$NoOp;
    .locals 1

    .line 369
    sget-object v0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$NoOp;->$VALUES:[Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$NoOp;

    return-object v0
.end method


# virtual methods
.method public after()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 387
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    return-object v0
.end method

.method public before()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 380
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    return-object v0
.end method

.method public getRequiredVariablePadding()I
    .locals 1

    .line 394
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v0

    return v0
.end method