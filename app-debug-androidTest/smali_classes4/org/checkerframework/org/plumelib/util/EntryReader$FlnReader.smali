.class Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;
.super Ljava/io/LineNumberReader;
.source "EntryReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/EntryReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlnReader"
.end annotation


# instance fields
.field public filename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;)V
    .locals 0
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "filename"    # Ljava/lang/String;

    .line 132
    invoke-direct {p0, p1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 133
    iput-object p2, p0, Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;->filename:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-static {p1}, Lorg/checkerframework/org/plumelib/util/UtilPlume;->fileReader(Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 144
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/EntryReader$FlnReader;->filename:Ljava/lang/String;

    .line 145
    return-void
.end method
