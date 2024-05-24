.class public Lcom/android/dx/util/ByteArray$MyDataInputStream;
.super Ljava/io/DataInputStream;
.source "ByteArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/util/ByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyDataInputStream"
.end annotation


# instance fields
.field private final wrapped:Lcom/android/dx/util/ByteArray$MyInputStream;


# direct methods
.method public constructor <init>(Lcom/android/dx/util/ByteArray$MyInputStream;)V
    .locals 0
    .param p1, "wrapped"    # Lcom/android/dx/util/ByteArray$MyInputStream;

    .line 359
    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 361
    iput-object p1, p0, Lcom/android/dx/util/ByteArray$MyDataInputStream;->wrapped:Lcom/android/dx/util/ByteArray$MyInputStream;

    .line 362
    return-void
.end method
