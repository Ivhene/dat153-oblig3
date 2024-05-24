.class Lscenelib/annotations/io/DebugWriter$1;
.super Lscenelib/annotations/io/DebugWriter;
.source "DebugWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscenelib/annotations/io/DebugWriter;->or(Lscenelib/annotations/io/DebugWriter;)Lscenelib/annotations/io/DebugWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lscenelib/annotations/io/DebugWriter;

.field final synthetic val$other:Lscenelib/annotations/io/DebugWriter;


# direct methods
.method constructor <init>(Lscenelib/annotations/io/DebugWriter;Lscenelib/annotations/io/DebugWriter;)V
    .locals 0
    .param p1, "this$0"    # Lscenelib/annotations/io/DebugWriter;

    .line 11
    iput-object p1, p0, Lscenelib/annotations/io/DebugWriter$1;->this$0:Lscenelib/annotations/io/DebugWriter;

    iput-object p2, p0, Lscenelib/annotations/io/DebugWriter$1;->val$other:Lscenelib/annotations/io/DebugWriter;

    invoke-direct {p0}, Lscenelib/annotations/io/DebugWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 14
    invoke-super {p0}, Lscenelib/annotations/io/DebugWriter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lscenelib/annotations/io/DebugWriter$1;->val$other:Lscenelib/annotations/io/DebugWriter;

    invoke-virtual {v0}, Lscenelib/annotations/io/DebugWriter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
