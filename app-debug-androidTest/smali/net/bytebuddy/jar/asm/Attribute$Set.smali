.class final Lnet/bytebuddy/jar/asm/Attribute$Set;
.super Ljava/lang/Object;
.source "Attribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/jar/asm/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Set"
.end annotation


# static fields
.field private static final SIZE_INCREMENT:I = 0x6


# instance fields
.field private data:[Lnet/bytebuddy/jar/asm/Attribute;

.field private size:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    const/4 v0, 0x6

    new-array v0, v0, [Lnet/bytebuddy/jar/asm/Attribute;

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Attribute$Set;->data:[Lnet/bytebuddy/jar/asm/Attribute;

    return-void
.end method

.method private add(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 4
    .param p1, "attribute"    # Lnet/bytebuddy/jar/asm/Attribute;

    .line 384
    iget v0, p0, Lnet/bytebuddy/jar/asm/Attribute$Set;->size:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Attribute$Set;->data:[Lnet/bytebuddy/jar/asm/Attribute;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 385
    array-length v2, v1

    add-int/lit8 v2, v2, 0x6

    new-array v2, v2, [Lnet/bytebuddy/jar/asm/Attribute;

    .line 386
    .local v2, "newData":[Lnet/bytebuddy/jar/asm/Attribute;
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    iput-object v2, p0, Lnet/bytebuddy/jar/asm/Attribute$Set;->data:[Lnet/bytebuddy/jar/asm/Attribute;

    .line 389
    .end local v2    # "newData":[Lnet/bytebuddy/jar/asm/Attribute;
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Attribute$Set;->data:[Lnet/bytebuddy/jar/asm/Attribute;

    iget v1, p0, Lnet/bytebuddy/jar/asm/Attribute$Set;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/bytebuddy/jar/asm/Attribute$Set;->size:I

    aput-object p1, v0, v1

    .line 390
    return-void
.end method

.method private contains(Lnet/bytebuddy/jar/asm/Attribute;)Z
    .locals 3
    .param p1, "attribute"    # Lnet/bytebuddy/jar/asm/Attribute;

    .line 375
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lnet/bytebuddy/jar/asm/Attribute$Set;->size:I

    if-ge v0, v1, :cond_1

    .line 376
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Attribute$Set;->data:[Lnet/bytebuddy/jar/asm/Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/Attribute;->type:Ljava/lang/String;

    iget-object v2, p1, Lnet/bytebuddy/jar/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    const/4 v1, 0x1

    return v1

    .line 375
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method addAttributes(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 2
    .param p1, "attributeList"    # Lnet/bytebuddy/jar/asm/Attribute;

    .line 359
    move-object v0, p1

    .line 360
    .local v0, "attribute":Lnet/bytebuddy/jar/asm/Attribute;
    :goto_0
    if-eqz v0, :cond_1

    .line 361
    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/Attribute$Set;->contains(Lnet/bytebuddy/jar/asm/Attribute;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/Attribute$Set;->add(Lnet/bytebuddy/jar/asm/Attribute;)V

    .line 364
    :cond_0
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    goto :goto_0

    .line 366
    :cond_1
    return-void
.end method

.method toArray()[Lnet/bytebuddy/jar/asm/Attribute;
    .locals 4

    .line 369
    iget v0, p0, Lnet/bytebuddy/jar/asm/Attribute$Set;->size:I

    new-array v1, v0, [Lnet/bytebuddy/jar/asm/Attribute;

    .line 370
    .local v1, "result":[Lnet/bytebuddy/jar/asm/Attribute;
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Attribute$Set;->data:[Lnet/bytebuddy/jar/asm/Attribute;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    return-object v1
.end method
