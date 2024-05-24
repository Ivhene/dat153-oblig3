.class public Lcom/android/dx/util/ByteArray$MyInputStream;
.super Ljava/io/InputStream;
.source "ByteArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/util/ByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyInputStream"
.end annotation


# instance fields
.field private cursor:I

.field private mark:I

.field final synthetic this$0:Lcom/android/dx/util/ByteArray;


# direct methods
.method public constructor <init>(Lcom/android/dx/util/ByteArray;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/dx/util/ByteArray;

    .line 296
    iput-object p1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/android/dx/util/ByteArray;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 297
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    .line 298
    iput v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->mark:I

    .line 299
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/android/dx/util/ByteArray;

    invoke-static {v0}, Lcom/android/dx/util/ByteArray;->access$000(Lcom/android/dx/util/ByteArray;)I

    move-result v0

    iget v1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "reserve"    # I

    .line 335
    iget v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    iput v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->mark:I

    .line 336
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    iget v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    iget-object v1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/android/dx/util/ByteArray;

    invoke-static {v1}, Lcom/android/dx/util/ByteArray;->access$000(Lcom/android/dx/util/ByteArray;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 304
    const/4 v0, -0x1

    return v0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/android/dx/util/ByteArray;

    iget v1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    invoke-static {v0, v1}, Lcom/android/dx/util/ByteArray;->access$100(Lcom/android/dx/util/ByteArray;I)I

    move-result v0

    .line 308
    .local v0, "result":I
    iget v1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    .line 309
    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "arr"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 314
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 315
    array-length v0, p1

    sub-int p3, v0, p2

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/android/dx/util/ByteArray;

    invoke-static {v0}, Lcom/android/dx/util/ByteArray;->access$000(Lcom/android/dx/util/ByteArray;)I

    move-result v0

    iget v1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    sub-int/2addr v0, v1

    .line 319
    .local v0, "maxLength":I
    if-le p3, v0, :cond_1

    .line 320
    move p3, v0

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/android/dx/util/ByteArray;

    invoke-static {v1}, Lcom/android/dx/util/ByteArray;->access$200(Lcom/android/dx/util/ByteArray;)[B

    move-result-object v1

    iget v2, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    iget-object v3, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->this$0:Lcom/android/dx/util/ByteArray;

    invoke-static {v3}, Lcom/android/dx/util/ByteArray;->access$300(Lcom/android/dx/util/ByteArray;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    iget v1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    .line 325
    return p3
.end method

.method public reset()V
    .locals 1

    .line 340
    iget v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->mark:I

    iput v0, p0, Lcom/android/dx/util/ByteArray$MyInputStream;->cursor:I

    .line 341
    return-void
.end method
