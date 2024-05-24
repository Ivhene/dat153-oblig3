.class public interface abstract Lorg/checkerframework/framework/stub/StubResource;
.super Ljava/lang/Object;
.source "StubResource.java"


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
