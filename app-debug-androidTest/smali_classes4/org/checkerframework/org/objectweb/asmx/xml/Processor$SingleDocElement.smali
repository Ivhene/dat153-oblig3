.class final Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SingleDocElement;
.super Ljava/lang/Object;
.source "Processor.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/xml/Processor$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/objectweb/asmx/xml/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleDocElement"
.end annotation


# instance fields
.field private os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1015
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SingleDocElement;->os:Ljava/io/OutputStream;

    .line 1016
    return-void
.end method


# virtual methods
.method public closeEntry()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1023
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SingleDocElement;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1024
    return-void
.end method

.method public openEntry(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1019
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/xml/Processor$SingleDocElement;->os:Ljava/io/OutputStream;

    return-object v0
.end method
