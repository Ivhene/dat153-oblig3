.class synthetic Lnet/bytebuddy/implementation/bytecode/Removal$2;
.super Ljava/lang/Object;
.source "Removal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/Removal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$bytebuddy$implementation$bytecode$StackSize:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/StackSize;->values()[Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/Removal$2;->$SwitchMap$net$bytebuddy$implementation$bytecode$StackSize:[I

    :try_start_0
    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/Removal$2;->$SwitchMap$net$bytebuddy$implementation$bytecode$StackSize:[I

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/Removal$2;->$SwitchMap$net$bytebuddy$implementation$bytecode$StackSize:[I

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    return-void
.end method
