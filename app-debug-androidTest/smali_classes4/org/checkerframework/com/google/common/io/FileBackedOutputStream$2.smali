.class Lorg/checkerframework/com/google/common/io/FileBackedOutputStream$2;
.super Lorg/checkerframework/com/google/common/io/ByteSource;
.source "FileBackedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/io/FileBackedOutputStream;-><init>(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/io/FileBackedOutputStream;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/io/FileBackedOutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/io/FileBackedOutputStream;

    .line 111
    iput-object p1, p0, Lorg/checkerframework/com/google/common/io/FileBackedOutputStream$2;->this$0:Lorg/checkerframework/com/google/common/io/FileBackedOutputStream;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/io/ByteSource;-><init>()V

    return-void
.end method


# virtual methods
.method public openStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/checkerframework/com/google/common/io/FileBackedOutputStream$2;->this$0:Lorg/checkerframework/com/google/common/io/FileBackedOutputStream;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/io/FileBackedOutputStream;->access$100(Lorg/checkerframework/com/google/common/io/FileBackedOutputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
