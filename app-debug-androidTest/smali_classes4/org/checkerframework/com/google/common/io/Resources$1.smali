.class final Lorg/checkerframework/com/google/common/io/Resources$1;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/io/LineProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/io/Resources;->readLines(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/io/LineProcessor<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/io/Resources$1;->result:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/io/Resources$1;->getResult()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/checkerframework/com/google/common/io/Resources$1;->result:Ljava/util/List;

    return-object v0
.end method

.method public processLine(Ljava/lang/String;)Z
    .locals 1
    .param p1, "line"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lorg/checkerframework/com/google/common/io/Resources$1;->result:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    const/4 v0, 0x1

    return v0
.end method
