.class synthetic Lscenelib/type/BoundedType$1;
.super Ljava/lang/Object;
.source "BoundedType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/type/BoundedType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$tools$javac$code$BoundKind:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    invoke-static {}, Lcom/sun/tools/javac/code/BoundKind;->values()[Lcom/sun/tools/javac/code/BoundKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lscenelib/type/BoundedType$1;->$SwitchMap$com$sun$tools$javac$code$BoundKind:[I

    :try_start_0
    sget-object v1, Lcom/sun/tools/javac/code/BoundKind;->EXTENDS:Lcom/sun/tools/javac/code/BoundKind;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/BoundKind;->ordinal()I

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
    sget-object v0, Lscenelib/type/BoundedType$1;->$SwitchMap$com$sun$tools$javac$code$BoundKind:[I

    sget-object v1, Lcom/sun/tools/javac/code/BoundKind;->SUPER:Lcom/sun/tools/javac/code/BoundKind;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/BoundKind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
