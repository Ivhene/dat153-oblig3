.class public Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$UrlDefinitionAction$ByteArrayUrlStreamHandler$ByteArrayUrlConnection;
.super Ljava/net/URLConnection;
.source "ByteArrayClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$UrlDefinitionAction$ByteArrayUrlStreamHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ByteArrayUrlConnection"
.end annotation


# instance fields
.field private final inputStream:Ljava/io/InputStream;


# direct methods
.method protected constructor <init>(Ljava/net/URL;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .line 954
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 955
    iput-object p2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$UrlDefinitionAction$ByteArrayUrlStreamHandler$ByteArrayUrlConnection;->inputStream:Ljava/io/InputStream;

    .line 956
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1

    .line 962
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$UrlDefinitionAction$ByteArrayUrlStreamHandler$ByteArrayUrlConnection;->connected:Z

    .line 963
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 969
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$UrlDefinitionAction$ByteArrayUrlStreamHandler$ByteArrayUrlConnection;->connect()V

    .line 970
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$UrlDefinitionAction$ByteArrayUrlStreamHandler$ByteArrayUrlConnection;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method
