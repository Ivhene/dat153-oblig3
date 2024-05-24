.class synthetic Lscenelib/annotations/util/JVMNames$1;
.super Ljava/lang/Object;
.source "JVMNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/annotations/util/JVMNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$source$tree$Tree$Kind:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 133
    invoke-static {}, Lcom/sun/source/tree/Tree$Kind;->values()[Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lscenelib/annotations/util/JVMNames$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    :try_start_0
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
