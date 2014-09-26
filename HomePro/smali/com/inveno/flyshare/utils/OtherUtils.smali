.class public Lcom/inveno/flyshare/utils/OtherUtils;
.super Ljava/lang/Object;
.source "OtherUtils.java"


# static fields
.field private static final STRING_BUFFER_LENGTH:I = 0x64

.field private static trustAllCerts:[Ljavax/net/ssl/TrustManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getCallerStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getCharsetFromHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 10
    .parameter "response"

    .prologue
    const/4 v5, 0x0

    .line 63
    if-nez p0, :cond_0

    .line 84
    :goto_0
    return-object v5

    .line 64
    :cond_0
    const/4 v4, 0x0

    .line 65
    .local v4, result:Ljava/lang/String;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    .line 66
    .local v2, header:Lorg/apache/http/Header;
    if-eqz v2, :cond_1

    .line 67
    invoke-interface {v2}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v8, :cond_3

    .line 76
    :cond_1
    :goto_2
    const/4 v3, 0x0

    .line 77
    .local v3, isSupportedCharset:Z
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 79
    :try_start_0
    invoke-static {v4}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 84
    :cond_2
    :goto_3
    if-eqz v3, :cond_5

    .end local v4           #result:Ljava/lang/String;
    :goto_4
    move-object v5, v4

    goto :goto_0

    .line 67
    .end local v3           #isSupportedCharset:Z
    .restart local v4       #result:Ljava/lang/String;
    :cond_3
    aget-object v1, v7, v6

    .line 68
    .local v1, element:Lorg/apache/http/HeaderElement;
    const-string v9, "charset"

    invoke-interface {v1, v9}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v0

    .line 69
    .local v0, charsetPair:Lorg/apache/http/NameValuePair;
    if-eqz v0, :cond_4

    .line 70
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 71
    goto :goto_2

    .line 67
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v0           #charsetPair:Lorg/apache/http/NameValuePair;
    .end local v1           #element:Lorg/apache/http/HeaderElement;
    .restart local v3       #isSupportedCharset:Z
    :cond_5
    move-object v4, v5

    .line 84
    goto :goto_4

    .line 80
    :catch_0
    move-exception v6

    goto :goto_3
.end method

.method public static getCurrentStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getFileNameFromHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 8
    .parameter "response"

    .prologue
    .line 45
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .line 59
    :cond_0
    :goto_0
    return-object v3

    .line 46
    :cond_1
    const/4 v3, 0x0

    .line 47
    .local v3, result:Ljava/lang/String;
    const-string v4, "Content-Disposition"

    invoke-interface {p0, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 48
    .local v2, header:Lorg/apache/http/Header;
    if-eqz v2, :cond_0

    .line 49
    invoke-interface {v2}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v0, v5, v4

    .line 50
    .local v0, element:Lorg/apache/http/HeaderElement;
    const-string v7, "filename"

    invoke-interface {v0, v7}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v1

    .line 51
    .local v1, fileNamePair:Lorg/apache/http/NameValuePair;
    if-eqz v1, :cond_2

    .line 52
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 54
    const-string v4, "UTF-8"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/inveno/flyshare/utils/CharsetUtils;->toCharset(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 55
    goto :goto_0

    .line 49
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static getSubString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 109
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isSupportRange(Lorg/apache/http/HttpResponse;)Z
    .locals 4
    .parameter "response"

    .prologue
    const/4 v2, 0x0

    .line 31
    if-nez p0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v2

    .line 32
    :cond_1
    const-string v3, "Accept-Ranges"

    invoke-interface {p0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 33
    .local v0, header:Lorg/apache/http/Header;
    if-eqz v0, :cond_2

    .line 34
    const-string v2, "bytes"

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 36
    :cond_2
    const-string v3, "Content-Range"

    invoke-interface {p0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "bytes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static sizeOfString(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .parameter "str"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 91
    const-wide/16 v3, 0x0

    .line 104
    :cond_0
    :goto_0
    return-wide v3

    .line 93
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 94
    .local v2, len:I
    const/16 v6, 0x64

    if-ge v2, v6, :cond_2

    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v6, v6

    int-to-long v3, v6

    goto :goto_0

    .line 97
    :cond_2
    const-wide/16 v3, 0x0

    .line 98
    .local v3, size:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 99
    add-int/lit8 v0, v1, 0x64

    .line 100
    .local v0, end:I
    if-ge v0, v2, :cond_3

    .line 101
    :goto_2
    invoke-static {p0, v1, v0}, Lcom/inveno/flyshare/utils/OtherUtils;->getSubString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, temp:Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v6, v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    .line 98
    add-int/lit8 v1, v1, 0x64

    goto :goto_1

    .end local v5           #temp:Ljava/lang/String;
    :cond_3
    move v0, v2

    .line 100
    goto :goto_2
.end method

.method public static trustAllSSLForHttpsURLConnection()V
    .locals 5

    .prologue
    .line 124
    sget-object v2, Lcom/inveno/flyshare/utils/OtherUtils;->trustAllCerts:[Ljavax/net/ssl/TrustManager;

    if-nez v2, :cond_0

    .line 125
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/inveno/flyshare/utils/OtherUtils$1;

    invoke-direct {v4}, Lcom/inveno/flyshare/utils/OtherUtils$1;-><init>()V

    aput-object v4, v2, v3

    sput-object v2, Lcom/inveno/flyshare/utils/OtherUtils;->trustAllCerts:[Ljavax/net/ssl/TrustManager;

    .line 140
    :cond_0
    :try_start_0
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 141
    .local v1, sslContext:Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    sget-object v3, Lcom/inveno/flyshare/utils/OtherUtils;->trustAllCerts:[Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 142
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    sget-object v2, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 147
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    goto :goto_0
.end method
